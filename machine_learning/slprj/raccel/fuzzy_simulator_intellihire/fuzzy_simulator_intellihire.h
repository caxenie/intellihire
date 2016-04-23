#include "__cf_fuzzy_simulator_intellihire.h"
#ifndef RTW_HEADER_fuzzy_simulator_intellihire_h_
#define RTW_HEADER_fuzzy_simulator_intellihire_h_
#include <stddef.h>
#include <string.h>
#include "rtw_modelmap.h"
#ifndef fuzzy_simulator_intellihire_COMMON_INCLUDES_
#define fuzzy_simulator_intellihire_COMMON_INCLUDES_
#include <stdlib.h>
#include "sl_AsyncioQueue/AsyncioQueueCAPI.h"
#include "ToAsyncQueueTgtAppSvc/ToAsyncQueueTgtAppSvcCIntrf.h"
#include "rtwtypes.h"
#include "sigstream_rtw.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "raccel.h"
#include "rt_logging.h"
#include "dt_info.h"
#include "ext_work.h"
#endif
#include "fuzzy_simulator_intellihire_types.h"
#include "multiword_types.h"
#include "mwmathutil.h"
#include "rt_defines.h"
#include "rtGetInf.h"
#include "rt_nonfinite.h"
#define MODEL_NAME fuzzy_simulator_intellihire
#define NSAMPLE_TIMES (3) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (81) 
#define NUM_ZC_EVENTS (0) 
#ifndef NCSTATES
#define NCSTATES (0)   
#elif NCSTATES != 0
#error Invalid specification of NCSTATES defined in compiler command
#endif
#ifndef rtmGetDataMapInfo
#define rtmGetDataMapInfo(rtm) (*rt_dataMapInfoPtr)
#endif
#ifndef rtmSetDataMapInfo
#define rtmSetDataMapInfo(rtm, val) (rt_dataMapInfoPtr = &val)
#endif
#ifndef IN_RACCEL_MAIN
#endif
typedef struct { real_T atr3n1o2px ; } n0vhepojsz ; typedef struct { int8_T
ptkbx4dybd ; } jsb2ccw04u ; typedef struct { real_T pqteeale5n ; } o2drgv4d3b
; typedef struct { int8_T ougegqceux ; } coqbtqvkhk ; typedef struct { real_T
ejraml2cnc ; real_T kqg3nqgidn ; real_T mmhmg1ezgs ; real_T icmlips5aw ;
real_T egjtu2ftmx ; real_T bgv5je1zun ; real_T gpou42e0tm ; real_T ld0zszfhel
; real_T ergnhz1uzn ; real_T bqzqfnaxfc ; real_T dgkbsqiyxd ; real_T
ecjxcpaayq [ 101 ] ; real_T jqegmipql0 ; real_T dodrqthtu1 ; real_T
dkf5lf0ih2 ; real_T azfdxultzx ; real_T lwusd2plu0 ; real_T pmiab44faz ;
real_T dxsawo501y [ 101 ] ; real_T jm4as15i1u ; real_T bbejdthm00 ; real_T
kf4tmpliyc [ 101 ] ; real_T aau1f4rvzr ; real_T bocmebwa4a [ 101 ] ; real_T
prgq2lqckt ; real_T dqxt35jmlm ; real_T ahvhce2dnr [ 101 ] ; real_T
dhxh5qmltp ; real_T mf5k2fyytu [ 101 ] ; real_T hr1mdpoart ; real_T
ewj3xaw32m [ 101 ] ; real_T pd2v535kng ; real_T pqbriyjjej [ 101 ] ; real_T
ozk0feligr ; real_T kkynikatj3 [ 101 ] ; real_T l13a3pxed0 ; real_T
bxkpzrvbmb [ 101 ] ; real_T blwfysbt0r ; real_T pdmbrbuzqu [ 101 ] ; real_T
porpibzqnz ; real_T cvulgbdrdm [ 101 ] ; real_T hgqxqbivri ; real_T
mpvrvm0xyu [ 101 ] ; real_T bd511ffw5y ; real_T eoi50a5ttb ; real_T
cyzp543l3u ; real_T ic5ti3hjdm ; real_T dbimmocx15 ; real_T nivjlnzek5 ;
real_T oysntbk4kl ; real_T onihjol30o ; o2drgv4d3b ldmdcqsgrp ; n0vhepojsz
mbmqqoarrc ; o2drgv4d3b ev2qnhdaiw ; n0vhepojsz mhw0zthztr ; o2drgv4d3b
b4fsehh1oe ; n0vhepojsz pksk3bp0ad ; o2drgv4d3b iznhf4ggmb ; n0vhepojsz
ap3ezzssma ; o2drgv4d3b ah3bwhijyp ; n0vhepojsz ood4hnt5ei ; o2drgv4d3b
lh4zvktjrg ; n0vhepojsz azsinjrdhu ; o2drgv4d3b jrg3tx4nza ; n0vhepojsz
nhom0zltaf ; o2drgv4d3b djuyhuwenn ; n0vhepojsz oijj04cs3h ; o2drgv4d3b
cjayb1yiic ; n0vhepojsz fvswwmzdv2 ; o2drgv4d3b dlvkf0rlu1 ; n0vhepojsz
dxwknx1onf ; o2drgv4d3b kipgjbpv3a ; n0vhepojsz hzposxf5kl ; o2drgv4d3b
mbfe4mrkdx ; n0vhepojsz fljg5cx20p ; o2drgv4d3b kzunpguvig ; n0vhepojsz
ncej1st4nu ; o2drgv4d3b ohhhx4jkfy ; n0vhepojsz nichsl1xkc ; o2drgv4d3b
ggvzurdyei2 ; n0vhepojsz iyvfkw0yfbs ; } B ; typedef struct { struct { void *
TimePtr ; void * DataPtr ; void * RSimInfoPtr ; } ijo5vr0dsf ; struct { void
* AQHandles ; } pk2hxtizcr ; struct { void * TimePtr ; void * DataPtr ; void
* RSimInfoPtr ; } ii2j2l1ar3 ; struct { void * AQHandles ; } bvagcp555x ;
struct { void * TimePtr ; void * DataPtr ; void * RSimInfoPtr ; } istisp00or
; struct { void * AQHandles ; } k2bd42oqgp ; struct { void * TimePtr ; void *
DataPtr ; void * RSimInfoPtr ; } aeemq5hqyu ; struct { void * AQHandles ; }
hrgk2314cc ; struct { void * TimePtr ; void * DataPtr ; void * RSimInfoPtr ;
} gooemqeirj ; struct { void * AQHandles ; } g5dgz4ft44 ; struct { void *
AQHandles ; } h3ebubtfed ; struct { void * LoggedData ; } fkxihupgne ; struct
{ void * LoggedData ; } masdd02fj4 ; struct { int_T PrevIndex ; } mdjual5xav
; struct { int_T PrevIndex ; } mrfcfph0a2 ; struct { int_T PrevIndex ; }
j0ioqstjuw ; struct { int_T PrevIndex ; } kfrlm4drjl ; struct { int_T
PrevIndex ; } n1lmki10yy ; int_T kwxe2ummmz ; int_T ndyjviitih [ 101 ] ;
int_T btdqg3gcar ; int_T goc4dqrjyi [ 101 ] ; int_T bywyaogev2 ; int_T
jscfnuoswc [ 101 ] ; int_T dy1vjcdlzk ; int_T hihv1wulcm [ 101 ] ; int_T
l5ovt5hhfo ; int_T jf1tzgil21 [ 101 ] ; int_T liz1vj30uh ; int_T c5j4u1xqw3 [
101 ] ; int_T gq0bee352a ; int_T ogdam0v3pj [ 101 ] ; int_T exkgoixz3c ;
int_T e4dqg4rjlm [ 101 ] ; int_T gfpopwu3z2 ; int_T ghka0rzoxm [ 101 ] ;
int_T bgcc43lxq4 ; int_T mlf3uj2ibv [ 101 ] ; int_T hqoz04dgea ; int_T
dwcisdfkym [ 101 ] ; int_T csc00e4inz ; int_T aaycx4m1zk [ 101 ] ; int_T
j3vmyv1eru ; int_T ldnqtcisa2 [ 101 ] ; int_T mw0vrf2zq0 [ 101 ] ; int8_T
ppqjzwpqsa ; int8_T k04k2of1c1 ; int8_T atu3ph2kwr ; int8_T nlqqo2kdb0 ;
int8_T nkfvztudn4 ; int8_T ao4oedxurf ; int8_T c2h4nruu2g ; int8_T apqr4rycga
; int8_T jgp5avkl2v ; int8_T kky1n4nlyw ; int8_T kfygzsdh1x ; int8_T
lxy5jly2jl ; int8_T odk5kbum5p ; int8_T iisyu5xfbk ; int8_T dcpiw2ovvj ;
int8_T kw2jz0mfdl ; int8_T apngkp115q ; int8_T caxnckqtjo ; int8_T gkd0aqjb5m
; int8_T l1fziobgel ; int8_T ouoyyx2uxm ; int8_T ihs2horjfm ; int8_T
gwlrbs3xpu ; int8_T iwhqwxle5w ; int8_T bd5xvqbi3g ; int8_T ik1s3spbam ;
int8_T ic3teaw54y ; int8_T neyklpjx3u ; int8_T iuwou0xbz1 ; int8_T fzz3eop2p2
; int8_T fhpwv4ulwf ; int8_T dpxrtlurdb ; int8_T njft1g4bne ; int8_T
fqq04x2305 ; int8_T oxzcr0swre ; int8_T nil0vzv4lt ; int8_T mhbmzxhjf1 ;
int8_T ie1ydddul2 ; int8_T oy05zyzhne ; int8_T bzzykmrzsw ; int8_T agyv3b2rxj
; int8_T ee0pg0vumh ; int8_T kyluz02r4l ; int8_T nvhcbveppz ; int8_T
ao5oh0fiuv ; int8_T fkuaquglzn ; int8_T fippptyjon ; int8_T asiinzs0en ;
boolean_T kprk5tcvuo ; coqbtqvkhk ldmdcqsgrp ; jsb2ccw04u mbmqqoarrc ;
coqbtqvkhk ev2qnhdaiw ; jsb2ccw04u mhw0zthztr ; coqbtqvkhk b4fsehh1oe ;
jsb2ccw04u pksk3bp0ad ; coqbtqvkhk iznhf4ggmb ; jsb2ccw04u ap3ezzssma ;
coqbtqvkhk ah3bwhijyp ; jsb2ccw04u ood4hnt5ei ; coqbtqvkhk lh4zvktjrg ;
jsb2ccw04u azsinjrdhu ; coqbtqvkhk jrg3tx4nza ; jsb2ccw04u nhom0zltaf ;
coqbtqvkhk djuyhuwenn ; jsb2ccw04u oijj04cs3h ; coqbtqvkhk cjayb1yiic ;
jsb2ccw04u fvswwmzdv2 ; coqbtqvkhk dlvkf0rlu1 ; jsb2ccw04u dxwknx1onf ;
coqbtqvkhk kipgjbpv3a ; jsb2ccw04u hzposxf5kl ; coqbtqvkhk mbfe4mrkdx ;
jsb2ccw04u fljg5cx20p ; coqbtqvkhk kzunpguvig ; jsb2ccw04u ncej1st4nu ;
coqbtqvkhk ohhhx4jkfy ; jsb2ccw04u nichsl1xkc ; coqbtqvkhk ggvzurdyei2 ;
jsb2ccw04u iyvfkw0yfbs ; } DW ; typedef struct { real_T f1gcbsm31u ; real_T
daogx01a0v [ 101 ] ; real_T kbvi4xn5wy ; real_T ennzq2b45i [ 101 ] ; real_T
mkys0iwgfn ; real_T coacjo12v0 [ 101 ] ; real_T pugshaftb0 ; real_T
dcbtdzgzqu [ 101 ] ; real_T iftjnec2jj ; real_T mi43kp3g4o [ 101 ] ; real_T
iou2fqvqif ; real_T m0inm4vskg [ 101 ] ; real_T ggyuqwaiae ; real_T
cjiyfq05tb [ 101 ] ; real_T lnxd03hfmn ; real_T ppssv2fov1 [ 101 ] ; real_T
g4xjjfxfqz ; real_T bhrz2uhl0t [ 101 ] ; real_T pbgrznxqkp ; real_T
a2ulndkfow [ 101 ] ; real_T i1hfno3bkw ; real_T ir142be3rr [ 101 ] ; real_T
cgfn5fcaxc ; real_T nhjoxgoxty [ 101 ] ; real_T p3t3cvm3xh ; real_T
bfzqzrjexf [ 101 ] ; real_T pumscn3fy1 [ 101 ] ; real_T djkeew0lk4 ; real_T
gm0sjagrmn ; } ZCV ; typedef struct { rtwCAPI_ModelMappingInfo mmi ; }
DataMapInfo ; struct P_ { real_T N_a ; real_T N_a_oojhulul21 ; real_T A_a ;
real_T D_a ; real_T D_a_atzevrvx5s ; real_T D_a_hypdpwh3sq ; real_T
A_a_fjaoebhh3i ; real_T D_a_poal5lzl5j ; real_T N_a_hwodywip2o ; real_T
A_a_onohpfidtp ; real_T N_a_dzyonah23d ; real_T A_a_oo4fe4sfqc ; real_T
D_a_gkv3rhxoiy ; real_T A_a_jibubpdwxv ; real_T N_a_ezq0ocx4xh ; real_T N_b ;
real_T N_b_jyt1cuysux ; real_T A_b ; real_T D_b ; real_T D_b_cdoy4yvefv ;
real_T D_b_c1utog13se ; real_T A_b_ovzbbkizfb ; real_T D_b_p0rdt1ddot ;
real_T N_b_dbun1azr0m ; real_T A_b_abuqd5uyxo ; real_T N_b_nd42u3w2py ;
real_T A_b_drywaugzqy ; real_T D_b_omxzgxiggg ; real_T A_b_gbnc3tunzh ;
real_T N_b_lpy30pwl3a ; real_T N_c ; real_T N_c_h5guvhlp1r ; real_T A_c ;
real_T D_c ; real_T D_c_clb3pwh4qd ; real_T D_c_nsyqlhtqj5 ; real_T
A_c_asjdlcaube ; real_T D_c_esc5r5jntt ; real_T N_c_awp42e2wrg ; real_T
A_c_jrwelih4tj ; real_T N_c_kcutw0wvnt ; real_T A_c_nyxkcrna4e ; real_T
D_c_oygo11yzn1 ; real_T A_c_dikexfrosm ; real_T N_c_k3fgxt4ag4 ; real_T
Out1_Y0 ; real_T u_Value ; real_T Out1_Y0_d15z2sqfuh ; real_T
u_Value_af0bk4w1xj ; real_T Out1_Y0_kmieloposb ; real_T u_Value_d3wenmk50l ;
real_T Out1_Y0_ak01zxhnqg ; real_T u_Value_a44qvrfyir ; real_T
Out1_Y0_h3v42ejtby ; real_T u_Value_imznwmsyph ; real_T Out1_Y0_irvbos3iq1 ;
real_T u_Value_jnrbr0lq2t ; real_T Out1_Y0_d5knnnho1s ; real_T
u_Value_dyxnwfw3lw ; real_T Out1_Y0_iqvkyquvcv ; real_T u_Value_peeihq3eqm ;
real_T Out1_Y0_mwk1wdyg41 ; real_T u_Value_bcgvks0d2b ; real_T
Out1_Y0_cveuuutdph ; real_T u_Value_kog4riwu5a ; real_T Out1_Y0_mhcgevt3ix ;
real_T u_Value_k51pmc0guv ; real_T Out1_Y0_nqwjbl3t4v ; real_T
u_Value_epqq1snqgz ; real_T Out1_Y0_i1cru3v3d5 ; real_T One_Value ; real_T
Out1_Y0_kzdbnm2xl3 ; real_T u_Value_bgtsdigesy ; real_T Out1_Y0_aysco25yfp ;
real_T u_Value_i0mievjjm5 ; real_T Out1_Y0_hxc0ru5lgc ; real_T
u_Value_avx0tykbtl ; real_T Out1_Y0_bvlacgihp0 ; real_T u_Value_lweuyrxoxe ;
real_T Out1_Y0_nt43sgff0h ; real_T u_Value_f13hpm53qv ; real_T
Out1_Y0_cas3zl2fa0 ; real_T u_Value_bt4es1gnzv ; real_T Out1_Y0_haz00o22po ;
real_T u_Value_oqpozg2zgw ; real_T Out1_Y0_cbcrpp5koq ; real_T
u_Value_faem5jfsys ; real_T Out1_Y0_emciigko23 ; real_T u_Value_jisznhmvi4 ;
real_T Out1_Y0_fg2yvlo3sh ; real_T u_Value_g4vnv1lstc ; real_T
Out1_Y0_fggnkc0tg3 ; real_T u_Value_bsdbkrthva ; real_T Out1_Y0_ouwjoj2cot ;
real_T u_Value_eciy5u2lbv ; real_T Out1_Y0_ludqsjyl5y ; real_T
u_Value_if3dx0enbx ; real_T Out1_Y0_cfal5dyme1 ; real_T u_Value_c0pkel3rki ;
real_T Out1_Y0_myvtobus3i ; real_T u_Value_pcugh0d1a0 ; real_T
Out1_Y0_pbw30mzbac ; real_T u_Value_grkvtw2xqe ; real_T Out1_Y0_bb3o5wy5yu ;
real_T u_Value_k5a1a42dkk ; real_T Out1_Y0_obop2nxz3j ; real_T
u_Value_azvegnfva2 ; real_T A1_Time0 [ 100 ] ; real_T A1_Data0 [ 100 ] ;
real_T A_Time0 [ 100 ] ; real_T A_Data0 [ 100 ] ; real_T C_Time0 [ 100 ] ;
real_T C_Data0 [ 100 ] ; real_T E_Time0 [ 100 ] ; real_T E_Data0 [ 100 ] ;
real_T xdata_Value [ 101 ] ; real_T Weight_Value ; real_T O_Time0 [ 100 ] ;
real_T O_Data0 [ 100 ] ; real_T S_Value [ 101 ] ; real_T
Weight_Value_ekozowvkro ; real_T T_Value [ 101 ] ; real_T
Weight_Value_k3wui3ulrr ; real_T AL_Value [ 101 ] ; real_T
Weight_Value_bkdm0homzl ; real_T D_Value [ 101 ] ; real_T
Weight_Value_p5jkvbcink ; real_T AR_Value [ 101 ] ; real_T
Weight_Value_f5nvs5sikx ; real_T Weight_Value_lskmsb11xd ; real_T
Weight_Value_dyxf1j3gql ; real_T Weight_Value_h3t0de0zyt ; real_T
Weight_Value_koi5htqqsy ; real_T Weight_Value_oonhgolpho ; real_T
Weight_Value_b0lo0a4fxu ; real_T Weight_Value_ncx0rvrhff ; real_T Zero_Value
; real_T MidRange_Value ; real_T Switch_Threshold ; } ; extern const char *
RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern DW rtDW ; extern P rtP ;
extern const rtwCAPI_ModelMappingStaticInfo *
fuzzy_simulator_intellihire_GetCAPIStaticMap ( void ) ; extern SimStruct *
const rtS ; extern const int_T gblNumToFiles ; extern const int_T
gblNumFrFiles ; extern const int_T gblNumFrWksBlocks ; extern rtInportTUtable
* gblInportTUtables ; extern const char * gblInportFileName ; extern const
int_T gblNumRootInportBlks ; extern const int_T gblNumModelInputs ; extern
const int_T gblInportDataTypeIdx [ ] ; extern const int_T gblInportDims [ ] ;
extern const int_T gblInportComplex [ ] ; extern const int_T
gblInportInterpoFlag [ ] ; extern const int_T gblInportContinuous [ ] ;
extern const int_T gblParameterTuningTid ; extern DataMapInfo *
rt_dataMapInfoPtr ; extern rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ;
void MdlOutputs ( int_T tid ) ; void MdlOutputsParameterSampleTime ( int_T
tid ) ; void MdlUpdate ( int_T tid ) ; void MdlTerminate ( void ) ; void
MdlInitializeSizes ( void ) ; void MdlInitializeSampleTimes ( void ) ;
SimStruct * raccel_register_model ( void ) ;
#endif
