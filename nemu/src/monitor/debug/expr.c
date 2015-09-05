#include "nemu.h"

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>

enum {
	NOTYPE = 256, EQ, NUM, HNUM, ONUM, NOT_EQ, NOT_LA, NOT_LE, AND, OR, NOT

	/* TODO: Add more token types */

};

static struct rule {
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

	{" +",	NOTYPE},				// spaces
	{"0x[\\da-f]+", HNUM},			// hex-number
	{"0[0-7]+", ONUM},				// oct-number
	{"&&", AND},					// and
	{"\\|\\|", OR},					// or
	{"\\(", '('},					// left
	{"\\)", ')'},					// right
	{"!=", NOT_EQ},					// not equal
	{"<=", NOT_LA},					// not large
	{">=", NOT_LE},					// not less
	{"\\+", '+'},					// plus
	{"-", '-'},						// minus
	{"\\*", '*'},					// multiply
	{"\\/", '\\'},					// divide	
	{"\\d+", NUM},					// number
	{"!", NOT},						// not
	{"==", EQ}						// equal
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

/* Rules are used for many times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
	int i;
	char error_msg[128];
	int ret;

	for(i = 0; i < NR_REGEX; i ++) {
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if(ret != 0) {
			regerror(ret, &re[i], error_msg, 128);
			Assert(ret != 0, "regex compilation failed: %s\n%s", error_msg, rules[i].regex);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char *e) {
	int position = 0;
	int i;
	regmatch_t pmatch;
	
	nr_token = 0;

	while(e[position] != '\0') {
		/* Try all rules one by one. */
		for(i = 0; i < NR_REGEX; i ++) {
			if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;

				Log("match rules[%d] = \"%s\" at position %d with len %d: %.*s", i, rules[i].regex, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. Add codes
				 * to record the token in the array ``tokens''. For certain 
				 * types of tokens, some extra actions should be performed.
				 */

				switch(rules[i].token_type) {
					NOTYPE: break;
					default: 
						tokens[nr_token].type = rules[i].token_type;
						strncpy(tokens[nr_token].str, substr_start, substr_len);
						nr_token++;
						break;
				}

				break;
			}
		}

		if(i == NR_REGEX) {
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	return true; 
}
uint32_t eval(uint32_t p, uint32_t q, bool *success) {
	if(p > q) {
		/* Bad expression */
		printf("p is less then q\n");
		*success = false;
		return 0;
		//assert(0);
	}
	else if(p == q) { 
		if(tokens[p].type != NUM && tokens[p].type != ONUM && tokens[p].type != HNUM) {
			printf("not a number!\n");
			*success = false;
			return 0;
			//assert(0);
		}
		switch(tokens[p].type) {
			case NUM: return strtol(tokens[p].str, NULL, 10); 
			case ONUM: return strtol(tokens[p].str, NULL, 8); 
			case HNUM: return strtol(tokens[p].str, NULL, 16); 
			default:
					   printf("dont have this number!\n");
					   *success = false;
					   return 0;
					   //assert(0);
		}
	}
	else if(check_parentheses(p, q) == true) {
		return eval(p + 1, q - 1); 
	}
	else {
		op = the position of dominant operator in the token expression;
		val1 = eval(p, op - 1);
		val2 = eval(op + 1, q);
		switch(op_type) {
			case '+': return val1 + val2;
			case '-': return val1 - val2;
			case '*': return val1 * val2;
			case '/': return val1 / val2;
			default: 
					printf("the operator deosn't implemented.\n");
					*success = false;
					return 0;
					//assert(0);
		}
	}
}

uint32_t expr(char *e, bool *success) {
	if(!make_token(e)) {
		*success = false;
		return 0;
	}

	/* TODO: Insert codes to evaluate the expression. */
	return eval(0, nr_token-1, *success);
	return 0;
}

