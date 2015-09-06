#include "monitor/monitor.h"
#include "monitor/expr.h"
#include "monitor/watchpoint.h"
#include "nemu.h"

#include <stdlib.h>
#include <readline/readline.h>
#include <readline/history.h>

void cpu_exec(uint32_t);

/* We use the ``readline'' library to provide more flexibility to read from stdin. */
char* rl_gets() {
	static char *line_read = NULL;

	if (line_read) {
		free(line_read);
		line_read = NULL;
	}

	line_read = readline("(nemu) ");

	if (line_read && *line_read) {
		add_history(line_read);
	}

	return line_read;
}

static int cmd_c(char *args) {
	cpu_exec(-1);
	return 0;
}

static int cmd_q(char *args) {
	return -1;
}

static int cmd_si(char *args) {
	if(args == NULL)cpu_exec(1);
	else cpu_exec(atoi(args));
	return 0;
}

static int cmd_info(char *args) {
	int i;
	if(args[0]=='r') {
		for(i = R_EAX; i <= R_EDI; i ++) {
			printf("%s = 0x%08x\n", regsl[i], reg_l(i));
		}
		for(i = R_AX; i <= R_DI; i ++) {
			printf("%s = 0x%04x\n", regsw[i], reg_w(i));
		}
		for(i = R_AL; i <= R_BH; i ++) {
			printf("%s = 0x%02x\n", regsb[i], reg_b(i));
		}
	}
	return 0;
}

static int cmd_x(char *args) {
	int i;
	int j = 0, n = 0, m = 0;
	bool *flag = 0;
	*flag = true;
	assert(0);
	while(args[j]!=' ') {
		j++;
	}
	n = atoi(args);
	m = expr(args + j + 1, flag);
	if(!*flag) {
		printf("not a correct expression.\n");
		return 0;
	}
	for(i = 0; i < n; i += 4) {
		if((i & 15) == 0) printf("\n0x%08x:", m + i);
		printf(" 0x%08x", hwaddr_read(m + i, 4));
	}
	printf("\n");
	return 0;
}

static int cmd_p(char *args) {
	bool *flag = 0;
	*flag = true;
	int n = expr(args, flag);
	if(*flag) return n;
	else {
		printf("not a correct expression.\n");
		return 0;
	}
}

static int cmd_help(char *args);

static struct {
	char *name;
	char *description;
	int (*handler) (char *);
} cmd_table [] = {
	{ "help", "Display informations about all supported commands", cmd_help },
	{ "c", "Continue the execution of the program", cmd_c },
	{ "q", "Exit NEMU", cmd_q },
	{ "si", "Next step", cmd_si },
	{ "info", "Info", cmd_info },
	{ "x", "Read memory", cmd_x },
	{ "p", "Expression evaluation", cmd_p },

	/* TODO: Add more commands */

};

#define NR_CMD (sizeof(cmd_table) / sizeof(cmd_table[0]))

static int cmd_help(char *args) {
	/* extract the first argument */
	char *arg = strtok(NULL, " ");
	int i;

	if(arg == NULL) {
		/* no argument given */
		for(i = 0; i < NR_CMD; i ++) {
			printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
		}
	}
	else {
		for(i = 0; i < NR_CMD; i ++) {
			if(strcmp(arg, cmd_table[i].name) == 0) {
				printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
				return 0;
			}
		}
		printf("Unknown command '%s'\n", arg);
	}
	return 0;
}

void ui_mainloop() {
	while(1) {
		char *str = rl_gets();
		char *str_end = str + strlen(str);

		/* extract the first token as the command */
		char *cmd = strtok(str, " ");
		if(cmd == NULL) { continue; }

		/* treat the remaining string as the arguments,
		 * which may need further parsing
		 */
		char *args = cmd + strlen(cmd) + 1;
		if(args >= str_end) {
			args = NULL;
		}

#ifdef HAS_DEVICE
		extern void sdl_clear_event_queue(void);
		sdl_clear_event_queue();
#endif

		int i;
		for(i = 0; i < NR_CMD; i ++) {
			if(strcmp(cmd, cmd_table[i].name) == 0) {
				if(cmd_table[i].handler(args) < 0) { return; }
				break;
			}
		}

		if(i == NR_CMD) { printf("Unknown command '%s'\n", cmd); }
	}
}
