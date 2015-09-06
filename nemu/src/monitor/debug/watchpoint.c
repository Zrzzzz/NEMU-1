#include "monitor/watchpoint.h"
#include "monitor/expr.h"

#define NR_WP 32

static WP wp_list[NR_WP];
static WP *head, *free_;

WP* new_wp();
void free_wp(WP *wp);

void init_wp_list() {
	int i;
	for(i = 0; i < NR_WP; i ++) {
		wp_list[i].NO = i;
		wp_list[i].next = &wp_list[i + 1];
	}
	wp_list[NR_WP - 1].next = NULL;

	head = NULL;
	free_ = wp_list;
}

WP* new_wp() {
	WP *now = free_;
	
	if(free_ == 0) {
		printf("no more points!\n");
		assert(0);	
	}	

	free_ = (*free_).next;
	(*now).next = head;
	head = now;

	return now;
}

void free_wp(WP *wp) {
	if(wp == 0) {
		printf("free a null ponit!\n");
		assert(0);
	}

	WP *now = head;

	if(wp == head) {
		head = (*head).next;
		(*wp).next = free_;
		free_ = wp;
	}

	while((*now).next != 0) {
		if((*now).next == wp) {
			(*now).next = (*wp).next;
			(*wp).next = free_;
			free_ = wp;
		}
	}

	if((*now).next == 0) {
		printf("no this point\n");
		assert(0);
	}
}

/* TODO: Implement the functionality of watchpoint */


