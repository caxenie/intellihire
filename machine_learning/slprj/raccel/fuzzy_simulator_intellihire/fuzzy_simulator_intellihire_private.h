#include "__cf_fuzzy_simulator_intellihire.h"
#ifndef RTW_HEADER_fuzzy_simulator_intellihire_private_h_
#define RTW_HEADER_fuzzy_simulator_intellihire_private_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "fuzzy_simulator_intellihire.h"
#if !defined(rt_VALIDATE_MEMORY)
#define rt_VALIDATE_MEMORY(S, ptr)   if(!(ptr)) {\
  ssSetErrorStatus(rtS, RT_MEMORY_ALLOCATION_ERROR);\
  }
#endif
#if !defined(rt_FREE)
#if !defined(_WIN32)
#define rt_FREE(ptr)   if((ptr) != (NULL)) {\
  free((ptr));\
  (ptr) = (NULL);\
  }
#else
#define rt_FREE(ptr)   if((ptr) != (NULL)) {\
  free((void *)(ptr));\
  (ptr) = (NULL);\
  }
#endif
#endif
#ifndef rtInterpolate
#define rtInterpolate(v1,v2,f1,f2)   (((v1)==(v2))?((double)(v1)):  (((f1)*((double)(v1)))+((f2)*((double)(v2)))))
#endif
#ifndef rtRound
#define rtRound(v) ( ((v) >= 0) ?   muDoubleScalarFloor((v) + 0.5) :   muDoubleScalarCeil((v) - 0.5) )
#endif
extern void iofji51cib ( SimStruct * const rtS ) ; extern void ds35g2xwq5 (
SimStruct * const rtS ) ; extern void iyvfkw0yfb ( real_T a33a2etiqq , real_T
* ls3cd1qgem , n0vhepojsz * localB , real_T rtp_a ) ; extern void
iyvfkw0yfbTID2 ( n0vhepojsz * localB , real_T rtp_a , real_T rtp_b ) ; extern
void mjqhatr11s ( SimStruct * const rtS ) ; extern void npxy0i5dqd (
SimStruct * const rtS ) ; extern void ggvzurdyei ( real_T ncvij5rokv , real_T
* pw4ytbomrv , o2drgv4d3b * localB , real_T rtp_c ) ; extern void
ggvzurdyeiTID2 ( o2drgv4d3b * localB , real_T rtp_b , real_T rtp_c ) ;
#if defined(MULTITASKING)
#error Models using the variable step solvers cannot define MULTITASKING
#endif
#endif
