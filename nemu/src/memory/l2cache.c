#include "common.h"
#include "burst.h"
#include "misc.h"
#include <stdlib.h>

#ifdef CACHE
#define CACHE_BLOCK_WIDTH 6
#define CACHE_WAY_WIDTH 4
#define CACHE_SET_WIDTH 16
#define CACHE_TAG_WIDTH (32 - CACHE_SET_WIDTH - CACHE_BLOCK_WIDTH)

typedef union {
	struct {
		uint32_t block	: CACHE_BLOCK_WIDTH;
		uint32_t set	: CACHE_SET_WIDTH;
		uint32_t tag	: CACHE_TAG_WIDTH;
	};
	hwaddr_t addr;
} l2cache_addr;	

#define CACHE_BLOCK_SIZE (1 << CACHE_BLOCK_WIDTH)
#define CACHE_WAY_SIZE (1 << CACHE_WAY_WIDTH)
#define CACHE_TAG_SIZE (1 << CACHE_TAG_WIDTH) 
#define CACHE_SET_SIZE (1 << CACHE_SET_WIDTH)
#define CACHE_BLOCK_MASK (CACHE_BLOCK_SIZE - 1)

typedef struct {
	uint8_t buf[CACHE_BLOCK_SIZE];
	int32_t tag;
	bool valid;
	bool dirty;
} l2CB;

l2CB l2cache[CACHE_SET_SIZE][CACHE_WAY_SIZE];

uint32_t dram_read(hwaddr_t addr, size_t len);
void dram_write(hwaddr_t addr, size_t len, uint32_t data);

void init_l2cache() {
	int i, j;
	for(i = 0; i < CACHE_SET_SIZE; i ++) {
		for(j = 0; j < CACHE_WAY_SIZE; j ++) {
			l2cache[i][j].valid = false;
			l2cache[i][j].dirty = false;
		}
	}
}

static uint8_t check_cache(hwaddr_t addr) {
	l2cache_addr temp;
	temp.addr = addr;
	uint32_t tag = temp.tag;
	uint32_t set = temp.set;
	uint8_t way = 0;
	int i;
	bool success = false;
	for(way = 0; way < CACHE_WAY_SIZE; way ++)
		if(l2cache[set][way].valid && (l2cache[set][way].tag == tag)) {
			success = true;
			break;
		}

	if(!success) {
		uint8_t temp1[CACHE_BLOCK_SIZE];
		hwaddr_t addr_temp = addr & ~CACHE_BLOCK_MASK;
		for(i = 0; i < CACHE_BLOCK_SIZE; i ++) {
			temp1[i] = (uint8_t)(dram_read(addr_temp + i , 1) & 0xff);
		}
		for(way = 0; way < CACHE_WAY_SIZE; way ++)
			if(!l2cache[set][way].valid) break;
		if(way == CACHE_WAY_SIZE) way = rand() & (CACHE_WAY_SIZE - 1);
		if(l2cache[set][way].valid && l2cache[set][way].dirty) {
			for(i = 0; i < CACHE_BLOCK_SIZE; i ++) {
				dram_write(addr_temp + i, 1, l2cache[set][way].buf[i]);
			}
			l2cache[set][way].dirty = false;
		}
		memcpy(l2cache[set][way].buf, temp1, CACHE_BLOCK_SIZE);
		l2cache[set][way].valid = true;
		l2cache[set][way].dirty = false;
		l2cache[set][way].tag = tag;
		//Log("Miss");
	}	
	else {
		//Log("Hit");
	}
	return way;
}

uint32_t l2cache_read(hwaddr_t addr, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
	l2cache_addr temp;
	temp.addr = addr;

	uint32_t set = temp.set;
	uint8_t way = check_cache(addr);
	uint32_t block = temp.block;

	uint8_t buf[CACHE_BLOCK_SIZE << 1];
	memcpy(buf, l2cache[set][way].buf, CACHE_BLOCK_SIZE);
	if(block + len > CACHE_BLOCK_SIZE) {
		temp.addr += CACHE_BLOCK_SIZE;
		set = temp.set;
		way = check_cache(temp.addr);
		memcpy(buf + CACHE_BLOCK_SIZE, l2cache[set][way].buf, CACHE_BLOCK_SIZE);
	}
	return (*(uint32_t *)(buf + block)) & (~0u >> ((4 - len) << 3));
}

void l2cache_write(hwaddr_t addr, size_t len, uint32_t data) {
	assert(len == 1 || len == 2 || len == 4);
	l2cache_addr temp;
	temp.addr = addr;
	uint32_t tag = temp.tag;
	uint32_t set = temp.set;
	uint32_t block = temp.block;
	uint8_t way = 0;
	bool success = false;
	for(way = 0; way < CACHE_WAY_SIZE; way ++)
	if(l2cache[set][way].valid && (l2cache[set][way].tag == tag)) {
		success = true;
		break;
	}
	if(success){
		int i;
		for(i = 0; i < len; i ++) {
			if(block + i < CACHE_BLOCK_SIZE)l2cache[set][way].buf[block + i] = (uint8_t)((data >> (i << 3)) & 0xff);
			else break;
		}
		l2cache[set][way].dirty = true;
		if(i != len) {
			temp.addr += CACHE_BLOCK_SIZE;
			way = check_cache(temp.addr);
			set = temp.set;
			tag = temp.tag;
			int j;
			for(j = 0; j < len - i; j ++) {
				l2cache[set][way].buf[j] = (uint8_t)((data >> (i << 3)) & 0xff);
			}
			l2cache[set][way].dirty = true;
		}
	}
	else {
		dram_write(addr, len, data);
	}
	return;
}
#endif
