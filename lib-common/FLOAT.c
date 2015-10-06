#include "FLOAT.h"

FLOAT F_mul_F(FLOAT a, FLOAT b) {
	long long c = a;
	c = c * b;
	c = c >> 16;
	a = c;
	return a;
}

int howManyBits(int x) {
	int n = 0;
	int a = !(x ^ (x << 16 >> 16));
	int b, c;
	x = x ^ (x >> 31);
	b = a << 4;
	n = b;
	c = n + 8;
	a = !(x ^ (x << c >> c));
	b = a << 3;
	n = n + b;
	c = n + 4;
	a = !(x ^ (x << c >> c));
	b = a << 2;
	n = n + b;
	c = n + 2;
	a = !(x ^ (x << c >> c));
	b = a << 1;
	n = n + b;
	c = n + 1;
	a = !(x ^ (x << c >> c));
	b = a;
	n = n + b;
	n = 33 + ~n;
	return n;
}
FLOAT F_div_F(FLOAT a, FLOAT b) {
	long long c = a;
	c = c << 16;
	int d = howManyBits(b);
	long long e = b, ans = 0;
	int i;
	for(i = 64 - d; i >= 0; i --) {
		if(c >= (e << i)) {
			ans += (1 << i);
			c -= (e << i);
		}
	}
	return ans;
}

FLOAT f2F(float a) {
	union {
		float f;
		int uf;
	}c;
	c.f = a;
	c.uf += 0x8000000;
	unsigned si = c.uf & 0x80000000;
	unsigned exp = (c.uf & 0x7f800000) >> 23;
	if(exp == 0xff) return 0x80000000u;
	c.uf = c.uf & 0x007fffff;
	if(exp < 127){
		return 0;
	}
	exp = exp - 127;
	if(exp > 54)return 0x80000000;
	c.uf = c.uf + 0x00800000;
	if(exp >= 23)c.uf = c.uf << (exp - 23);
	else c.uf = c.uf >> (23 - exp);
	if(si)c.uf = -c.uf; 
	return c.uf;
}

FLOAT Fabs(FLOAT a) {
	if(a < 0)a = -a;
	return a;
}

FLOAT sqrt(FLOAT x) {
	FLOAT dt, t = int2F(2);

	do {
		dt = F_div_int((F_div_F(x, t) - t), 2);
		t += dt;
	} while(Fabs(dt) > f2F(1e-4));

	return t;
}

FLOAT pow(FLOAT x, FLOAT y) {
	/* we only compute x^0.333 */
	FLOAT t2, dt, t = int2F(2);

	do {
		t2 = F_mul_F(t, t);
		dt = (F_div_F(x, t2) - t) / 3;
		t += dt;
	} while(Fabs(dt) > f2F(1e-4));

	return t;
}

