#include "common.h"
#include "cpu/reg.h"
#include <stdlib.h>
#include <time.h>

#define TLB_BLOCK_WIDTH 12
#define TLB_WAY_WIDTH 6
#define TLB_TAG_WIDTH (32 - TLB_BLOCK_WIDTH)

typedef union {
	struct {
		uint32_t block	: TLB_BLOCK_WIDTH;
		uint32_t tag	: TLB_TAG_WIDTH;
	};
	swaddr_t addr;
} tlb_addr;	

#define TLB_BLOCK_SIZE (1 << TLB_BLOCK_WIDTH)
#define TLB_WAY_SIZE (1 << TLB_WAY_WIDTH)
#define TLB_TAG_SIZE (1 << TLB_TAG_WIDTH) 
#define TLB_BLOCK_MASK (TLB_BLOCK_SIZE - 1)

typedef struct {
	hwaddr_t base;
	uint32_t tag;
	bool valid;
} TLB;

TLB tlb[TLB_WAY_SIZE];

void init_tlb() {
	int i;
	srand((unsigned)(time(0)));
	for(i = 0; i < TLB_WAY_SIZE; i ++) {
		tlb[i].valid = false;
	}
}

uint32_t hwaddr_read(hwaddr_t, size_t);

hwaddr_t page_translate(lnaddr_t addr) {
	if(!cpu.cr0.protect_enable || !cpu.cr0.paging) return addr;
	tlb_addr temp;
	temp.addr = addr;
	uint32_t tag = temp.tag;
	uint8_t way = 0;
	bool success = false;
	for(way = 0; way < TLB_WAY_SIZE; way ++)
		if(tlb[way].valid && (tlb[way].tag == tag)) {
			success = true;
			break;
		}

	if(!success) {
		for(way = 0; way < TLB_WAY_SIZE; way ++)
			if(!tlb[way].valid) break;
		if(way == TLB_WAY_SIZE) way = rand() & (TLB_WAY_SIZE - 1);
		hwaddr_t l1page = (cpu.cr3.page_directory_base << 12) + (addr >> 22 << 2);
		hwaddr_t l2page = (hwaddr_read(l1page, 4) & 0xfffff000) + ((addr >> 12 << 2) & 0xfff);
		tlb[way].base = (hwaddr_read(l2page, 4) & 0xfffff000);
		tlb[way].valid = true;
		tlb[way].tag = tag;
	}	
	return tlb[way].base + (addr & 0xfff);
}

lnaddr_t seg_translate(swaddr_t addr, size_t len, uint8_t sreg) {
	if(cpu.cr0.protect_enable == 0) return addr;
	return (cpu.sreg[(sreg << 2) + 3] << 8) + (cpu.sreg[(sreg << 2) + 2]) + addr;
}

