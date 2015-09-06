#ifndef __WATCHPOINT_H__
#define __WATCHPOINT_H__

#include "common.h"

typedef struct watchpoint {
	int NO;
	struct watchpoint *next;
	int v;
	char expr[256];

	/* TODO: Add more members if necessary */


} WP;

#endif
