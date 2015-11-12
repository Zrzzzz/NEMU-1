#include "cpu/exec/helper.h"

#define DATA_BYTE 1

#define instr seta
#define expr (!cpu.CF && !cpu.ZF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setae
#define expr (!cpu.CF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setb
#define expr (cpu.CF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setbe
#define expr (cpu.CF || cpu.ZF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr sete
#define expr (cpu.ZF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setg
#define expr ((cpu.SF == cpu.OF) && !cpu.ZF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setge
#define expr ((cpu.SF == cpu.OF))
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setl
#define expr (cpu.SF != cpu.OF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setle
#define expr ((cpu.SF != cpu.OF) || cpu.ZF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setne
#define expr (!cpu.ZF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setno
#define expr (!cpu.OF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setnp
#define expr (!cpu.PF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setns
#define expr (!cpu.SF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr seto
#define expr (cpu.OF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr setp
#define expr (cpu.PF)
#include "setcc-template.h"
#undef expr
#undef instr

#define instr sets
#define expr (cpu.SF)
#include "setcc-template.h"
#undef expr
#undef instr

#undef DATA_BYTE

/* for instruction encoding overloading */

