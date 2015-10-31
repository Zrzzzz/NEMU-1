#include "prefix/prefix.h"

#include "cmovcc/cmovcc.h"

#include "data-mov/mov.h"
#include "data-mov/xchg.h"
#include "data-mov/movsx.h"
#include "data-mov/movzx.h"
#include "data-mov/cwdcdq.h"

#include "sub/sub.h"
#include "sbb/sbb.h"

#include "add/add.h"
#include "adc/adc.h"

#include "stos/stos.h"
#include "movs/movs.h"
#include "cmps/cmps.h"

#include "stack/push.h"
#include "stack/pop.h"

#include "call/call.h" 

#include "setcc/setcc.h"

#include "leave/leave.h"

#include "cmp/cmp.h"

#include "test/test.h"

#include "jcc/jcc.h"
#include "jmp/jmp.h"
#include "ret/ret.h"

#include "arith/dec.h"
#include "arith/inc.h"
#include "arith/neg.h"
#include "arith/imul.h"
#include "arith/mul.h"
#include "arith/idiv.h"
#include "arith/div.h"

#include "logic/and.h"
#include "logic/or.h"
#include "logic/not.h"
#include "logic/xor.h"
#include "logic/sar.h"
#include "logic/shl.h"
#include "logic/shr.h"
#include "logic/shrd.h"
#include "logic/shld.h"

#include "string/rep.h"

#include "cld/cld.h"

#include "lgdt/lgdt.h"
#include "lidt/lidt.h"

#include "misc/misc.h"

#include "flag/flag.h"

#include "special/special.h"
