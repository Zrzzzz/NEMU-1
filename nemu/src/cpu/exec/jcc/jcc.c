#include "cpu/exec/helper.h"

#define DATA_BYTE 1

#define instr ja
#define expr (!cpu.CF && !cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jae
#define expr (!cpu.CF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jb
#define expr (cpu.CF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jbe
#define expr (cpu.CF || cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr je
#define expr (cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jg
#define expr ((cpu.SF == cpu.OF) && !cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jge
#define expr ((cpu.SF == cpu.OF))
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jl
#define expr (cpu.SF != cpu.OF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jle
#define expr ((cpu.SF != cpu.OF) || cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jne
#define expr (!cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jno
#define expr (!cpu.OF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jnp
#define expr (!cpu.PF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jns
#define expr (!cpu.SF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jo
#define expr (cpu.OF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jp
#define expr (cpu.PF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr js
#define expr (cpu.SF)
#include "jcc-template.h"
#undef expr
#undef instr

#undef DATA_BYTE

#define DATA_BYTE 2

#define instr ja
#define expr (!cpu.CF && !cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jae
#define expr (!cpu.CF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jb
#define expr (cpu.CF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jbe
#define expr (cpu.CF || cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr je
#define expr (cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jg
#define expr ((cpu.SF == cpu.OF) && !cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jge
#define expr ((cpu.SF == cpu.OF))
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jl
#define expr (cpu.SF != cpu.OF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jle
#define expr ((cpu.SF != cpu.OF) || cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jne
#define expr (!cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jno
#define expr (!cpu.OF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jnp
#define expr (!cpu.PF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jns
#define expr (!cpu.SF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jo
#define expr (cpu.OF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jp
#define expr (cpu.PF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr js
#define expr (cpu.SF)
#include "jcc-template.h"
#undef expr
#undef instr

#undef DATA_BYTE

#define DATA_BYTE 4

#define instr ja
#define expr (!cpu.CF && !cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jae
#define expr (!cpu.CF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jb
#define expr (cpu.CF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jbe
#define expr (cpu.CF || cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr je
#define expr (cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jg
#define expr ((cpu.SF == cpu.OF) && !cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jge
#define expr ((cpu.SF == cpu.OF))
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jl
#define expr (cpu.SF != cpu.OF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jle
#define expr ((cpu.SF != cpu.OF) || cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jne
#define expr (!cpu.ZF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jno
#define expr (!cpu.OF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jnp
#define expr (!cpu.PF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jns
#define expr (!cpu.SF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jo
#define expr (cpu.OF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr jp
#define expr (cpu.PF)
#include "jcc-template.h"
#undef expr
#undef instr

#define instr js
#define expr (cpu.SF)
#include "jcc-template.h"
#undef expr
#undef instr

#undef DATA_BYTE

/* for instruction encoding overloading */

make_helper_v(jo_i)
make_helper_v(jno_i)
make_helper_v(jb_i)
make_helper_v(jae_i)
make_helper_v(je_i)
make_helper_v(jne_i)
make_helper_v(jbe_i)
make_helper_v(ja_i)
make_helper_v(js_i)
make_helper_v(jns_i)
make_helper_v(jp_i)
make_helper_v(jnp_i)
make_helper_v(jl_i)
make_helper_v(jge_i)
make_helper_v(jle_i)
make_helper_v(jg_i)

