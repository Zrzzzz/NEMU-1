#include "common.h"
#include "device/mmio.h"

uint32_t l1cache_read(hwaddr_t, size_t);
void l1cache_write(hwaddr_t, size_t, uint32_t);
hwaddr_t page_translate(lnaddr_t);
lnaddr_t seg_translate(swaddr_t, size_t, uint8_t);

/* Memory accessing interfaces */

uint32_t hwaddr_read(hwaddr_t addr, size_t len) {
	int is_io = is_mmio(addr);
	if(is_io != -1) return mmio_read(addr, len, is_io);
	else return l1cache_read(addr, len) & (~0u >> ((4 - len) << 3));
}

void hwaddr_write(hwaddr_t addr, size_t len, uint32_t data) {
	int is_io = is_mmio(addr);
	if(is_io != -1) {
		mmio_write(addr, len, data, is_io);
		printf("ASd\n");
	}
	else l1cache_write(addr, len, data);
}

uint32_t lnaddr_read(lnaddr_t addr, size_t len) {
#ifdef DEBUG
	assert(len == 1 || len == 2 || len == 4);
#endif
	hwaddr_t hwaddr = page_translate(addr);
	return hwaddr_read(hwaddr, len);
}

void lnaddr_write(lnaddr_t addr, size_t len, uint32_t data) {
#ifdef DEBUG
	assert(len == 1 || len == 2 || len == 4);
#endif
	hwaddr_t hwaddr = page_translate(addr);
	hwaddr_write(hwaddr, len, data);
}

uint32_t swaddr_read(swaddr_t addr, size_t len, uint8_t sreg) {
#ifdef DEBUG
	assert(len == 1 || len == 2 || len == 4);
#endif
	lnaddr_t lnaddr = seg_translate(addr, len, sreg);
	return lnaddr_read(lnaddr, len);
}

void swaddr_write(swaddr_t addr, size_t len, uint32_t data, uint8_t sreg) {
#ifdef DEBUG
	assert(len == 1 || len == 2 || len == 4);
#endif
	lnaddr_t lnaddr = seg_translate(addr, len, sreg);
	lnaddr_write(lnaddr, len, data);
}

