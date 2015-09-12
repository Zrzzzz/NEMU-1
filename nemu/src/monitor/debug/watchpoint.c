#include "monitor/watchpoint.h"
#include "monitor/expr.h"

#define NR_WP 32

static WP wp_list[NR_WP];
static WP *head, *free_;
static int wp_num = 0;

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
		return;
	}

	while((*now).next != 0) {
		if((*now).next == wp) {
			(*now).next = (*wp).next;
			(*wp).next = free_;
			free_ = wp;
		}
		now = (*now).next;
	}

	if((*now).next == 0) {
		printf("no this point\n");
		assert(0);
	}
}

void print_wp_info() {
	WP* now = head;
	printf("Num\tValue\tExpr\n");
	while(now != 0) {
		printf("%d\t%d\t%s\n", (*now).NO, (*now).v, (*now).expr);
		now = (*now).next;
	}
}

void add_wp(char *args) {
	bool flag = true;
	WP *now = new_wp();
	(*now).NO = wp_num ++;
	strcpy((*now).expr, args);
	(*now).v = expr((*now).expr, &flag);
}

void delete_wp(int no) {
	WP *now = head;
	while(now != 0) {
		if((*now).NO == no) {
			free_wp(now);
			return;
		}
		now = (*now).next;
	}
	printf("no this number's point\n");
}

void check_wp(bool *fl) {
	WP *now = head;
	while(now != 0) {
		bool flag =true;
		uint32_t t = expr((*now).expr, &flag);
		if(t != (*now).v) {
			*fl = false;
			(*now).v = t;
			printf("%d: %s = %d\n", (*now).NO, (*now).expr, t);
			break;
		}
		now = (*now).next;
	}
}

/* TODO: Implement the functionality of watchpoint */


