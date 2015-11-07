#include "nemu.h"

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>
#include <stdlib.h>

uint32_t read_sym(char *);

enum {
	NOTYPE = 256, EQ, NUM, HNUM, ONUM, NOT_EQ, NOT_LA, NOT_LE, AND, OR, NOT, LS, RS, VAR

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
	{"0x[0-9a-f]+", HNUM},			// hex-number
	{"0[0-7]+", ONUM},				// oct-number
	{"&&", AND},					// and
	{"\\|\\|", OR},					// or
	{"\\(", '('},					// left
	{"\\)", ')'},					// right
	{"&", '&'},						// bit and
	{"\\|", '|'},					// bit or
	{"~", '~'},						// bit not
	{"\\^", '^'},					// bit xor
	{"<<", LS},						// left shift
	{">>", RS},						// right shift
	{"%", '%'},						// mod
	{"!=", NOT_EQ},					// not equal
	{"<=", NOT_LA},					// not large
	{">=", NOT_LE},					// not less
	{"<", '<'},						// less
	{">", '>'},						// large
	{"\\+", '+'},					// plus
	{"-", '-'},						// minus
	{"\\*", '*'},					// multiply
	{"\\/", '/'},					// divide	
	{"[0-9]+", NUM},				// number
	{"!", '!'},						// not
	{"\\$\\w+", '$'},				// register
	{"==", EQ},						// equal
	{"\\w[a-z0-9_]+", VAR}			// var
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
			Assert(ret == 0, "regex compilation failed: %s\n%s", error_msg, rules[i].regex);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

bool not_a_num(uint32_t p) {
		if(tokens[p].type != NUM && tokens[p].type != ONUM && tokens[p].type != HNUM && tokens[p].type != '$' && tokens[p].type != VAR) {
			return true;
		}
		else return false;
}

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

				//Log("match rules[%d] = \"%s\" at position %d with len %d: %.*s", i, rules[i].regex, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. Add codes
				 * to record the token in the array ``tokens''. For certain 
				 * types of tokens, some extra actions should be performed.
				 */

				switch(rules[i].token_type) {
					case NOTYPE: break;
					default: 
						tokens[nr_token].type = rules[i].token_type;
						strncpy(tokens[nr_token].str, substr_start, substr_len);
						tokens[nr_token].str[substr_len] = '\0';
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

bool check_parentheses(uint32_t p, uint32_t q, bool *success) {
	int i = 0, j = 0;
	bool flag = true;
	if(p >= q) {
		printf("there are something goes wrong\n");
		assert(0);
	}
	if(tokens[p].type != '(' || tokens[q].type != ')')return false;
	for(i = p + 1; i < q; i++) {
		if(tokens[i].type == '(') {
			j++;
		}
		else if(tokens[i].type == ')') {
			j--;
			if(j < 0) flag = false;
			if(j < -1) *success = false;
		}
	}
	if(j != 0) {
		printf("brackets not match!\n");
		*success = false;
		return true;
	}
	return flag;
}

uint32_t relax(uint32_t i, uint32_t v, uint32_t *la, uint32_t *pr) {
	if(v >= *pr) {
		*la = i;
		*pr = v;
	}
	return 0;
}

uint32_t relax1(uint32_t i, uint32_t v, uint32_t *la, uint32_t *pr) {
	if(v > *pr) {
		*la = i;
		*pr = v;
	}
	return 0;
}

uint32_t find_the_last_operator(uint32_t p,uint32_t q) {
	uint32_t i, j = 0, *la = 0, *pr = 0;
	uint32_t las = 0, pri = 0;
	la = &las;
	pr = &pri;
	for(i = p; i <= q; i ++) {
		if(tokens[i].type == '(') j++;
		else if(tokens[i].type == ')') j--;
		else if(j == 0) {
			switch(tokens[i].type) {
				case OR: 
					relax(i, 12, la, pr);
					break;
				case AND:
					relax(i, 11, la, pr);
					break;
				case '|':
					relax(i, 10, la, pr);
					break;
				case '^':
					relax(i, 9, la, pr);
					break;
				case '&':
					relax(i, 8, la, pr);
					break;
				case EQ:
					relax(i, 7, la, pr);
					break;
				case NOT_EQ:
					relax(i, 7, la, pr);
					break;
				case '>':
					relax(i, 6, la, pr);
					break;
				case '<':
					relax(i, 6, la, pr);
					break;
				case NOT_LE:
					relax(i, 6, la, pr);
					break;
				case NOT_LA:
					relax(i, 6, la, pr);
					break;
				case LS:
					relax(i, 5, la, pr);
					break;
				case RS:
					relax(i, 5, la, pr);
					break;
				case '+':
					relax(i, 4, la, pr);
					break;
				case '-':
					if(i != p && (!not_a_num(i-1) || tokens[i-1].type == ')')) relax(i, 4, la, pr);
					else relax1(i, 2, la, pr);
					break;
				case '/':
					relax(i, 3, la, pr);
					break;
				case '*':
					if(i != p && (!not_a_num(i-1) || tokens[i-1].type == ')')) relax(i, 4, la, pr);
					else relax1(i, 2, la, pr);
					break;
				case '!':
					relax1(i, 2, la, pr);
					break;
				case '~':
					relax1(i, 2, la, pr);
					break;
				default:
					break;
			}
		}
	}
	return *la;
}

uint32_t eval(uint32_t p, uint32_t q, bool *success) {
	int i;
	uint32_t op, val1, val2, ret;
	if(p > q) {
		/* Bad expression */
		printf("p is less then q\n");
		*success = false;
		return 0;
	}
	else if(p == q) { 
		if(not_a_num(p)){
			printf("not a number!\n");
			*success = false;
			return 0;
		}
		switch(tokens[p].type) {
			case NUM: sscanf(tokens[p].str, "%o", &ret);return ret;
			case ONUM: sscanf(tokens[p].str, "0%d", &ret);return ret;
			case HNUM: sscanf(tokens[p].str, "0x%x", &ret);return ret;
			case '$':
						  for(i = R_EAX; i <= R_EDI; i ++) {
							  if(strcmp(regsl[i], tokens[p].str+1) == 0) {
								  return reg_l(i);
							  }
						  }
						  for(i = R_AX; i <= R_DI; i ++) {
							  if(strcmp(regsw[i], tokens[p].str+1) == 0) {
								  return reg_w(i);
							  }
						  }
						  for(i = R_AL; i <= R_BH; i ++) {
							  if(strcmp(regsb[i], tokens[p].str+1) == 0) {
								  return reg_b(i);
							  }
						  }
						  if(strcmp("eip", tokens[p].str+1) == 0) return cpu.eip;
						  printf("register name wrong.\n");
						  *success = false;
						  return 0;
			case VAR:
						  ret = read_sym(tokens[p].str);
						  if(ret) return ret;
						  printf("dont have this variable\n");
						  *success = false;
						  return 0;
			default:
					   printf("dont have this number!\n");
					   *success = false;
					   return 0;
		}
	}
	else if(check_parentheses(p, q, success) == true) {
		if(!(*success)) {
			return 0;
		}
		return eval(p + 1, q - 1, success); 
	}
	else {
		op = find_the_last_operator(p, q);
		if(op != p && (!not_a_num(op-1) || tokens[op-1].type == ')')) {
			val1 = eval(p, op - 1, success);
			val2 = eval(op + 1, q, success);
			if(!(*success)) return 0;
			switch(tokens[op].type) {
				case '+': return val1 + val2;
				case '-': return val1 - val2;
				case '*': return val1 * val2;
				case '/': return val1 / val2;
				case '&': return val1 & val2;
				case '|': return val1 | val2;
				case AND: return val1 && val2;
				case OR: return val1 || val2;
				case '^': return val1 ^ val2;
				case LS: return val1 << val2;
				case RS: return val1 >> val2;
				case '%': return val1 % val2;
				case '<': return val1 < val2;
				case '>': return val1 > val2;
				case NOT_LE: return val1 >= val2;
				case NOT_LA: return val1 <= val2;
				case NOT_EQ: return val1 != val2;
				case EQ: return val1 == val2;
				default: 
						printf("the operator deosn't implemented.\n");
						*success = false;
						return 0;
			}
		}
		else {
			val2 = eval(op + 1, q, success);
			if(!(*success)) return 0;
			switch(tokens[op].type) {
				case '-': return -val2;
				case '*': return swaddr_read(val2, 4, SR_DS);
				case '!': return !val2;
				case '~': return ~val2;
				default:
						printf("the operator deosn't implemented.\n");
						*success = false;
						return 0;
			}
		}
	}
}

uint32_t expr(char *e, bool *success) {
	if(!make_token(e)) {
		*success = false;
		return 0;
	}

	/* TODO: Insert codes to evaluate the expression. */
	return eval(0, nr_token-1, success);
}

