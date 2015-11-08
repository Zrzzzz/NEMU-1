#include "cpu/exec/helper.h"

#define DATA_BYTE 2

#define instr cmova
#define expr (!cpu.CF && !cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovae
#define expr (!cpu.CF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovb
#define expr (cpu.CF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovbe
#define expr (cpu.CF || cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmove
#define expr (cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovg
#define expr ((cpu.SF == cpu.OF) && !cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovge
#define expr ((cpu.SF == cpu.OF))
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovl
#define expr (cpu.SF != cpu.OF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovle
#define expr ((cpu.SF != cpu.OF) || cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovne
#define expr (!cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovno
#define expr (!cpu.OF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovnp
#define expr (!cpu.PF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovns
#define expr (!cpu.SF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovo
#define expr (cpu.OF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovp
#define expr (cpu.PF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovs
#define expr (cpu.SF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#undef DATA_BYTE

#define DATA_BYTE 4

#define instr cmova
#define expr (!cpu.CF && !cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovae
#define expr (!cpu.CF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovb
#define expr (cpu.CF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovbe
#define expr (cpu.CF || cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmove
#define expr (cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovg
#define expr ((cpu.SF == cpu.OF) && !cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovge
#define expr ((cpu.SF == cpu.OF))
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovl
#define expr (cpu.SF != cpu.OF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovle
#define expr ((cpu.SF != cpu.OF) || cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovne
#define expr (!cpu.ZF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovno
#define expr (!cpu.OF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovnp
#define expr (!cpu.PF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovns
#define expr (!cpu.SF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovo
#define expr (cpu.OF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovp
#define expr (cpu.PF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#define instr cmovs
#define expr (cpu.SF)
#include "cmovcc-template.h"
#undef expr
#undef instr

#undef DATA_BYTE

/* for instruction encoding overloading */

make_helper_v(cmovo_rm2r)
make_helper_v(cmovno_rm2r)
make_helper_v(cmovb_rm2r)
make_helper_v(cmovae_rm2r)
make_helper_v(cmove_rm2r)
make_helper_v(cmovne_rm2r)
make_helper_v(cmovbe_rm2r)
make_helper_v(cmova_rm2r)
make_helper_v(cmovs_rm2r)
make_helper_v(cmovns_rm2r)
make_helper_v(cmovp_rm2r)
make_helper_v(cmovnp_rm2r)
make_helper_v(cmovl_rm2r)
make_helper_v(cmovge_rm2r)
make_helper_v(cmovle_rm2r)
make_helper_v(cmovg_rm2r)

