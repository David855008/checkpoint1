                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module testcoop
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl __mcs51_genXRAMCLEAR
                                     12 	.globl __mcs51_genXINIT
                                     13 	.globl __mcs51_genRAMCLEAR
                                     14 	.globl __sdcc_gsinit_startup
                                     15 	.globl _main
                                     16 	.globl _Consumer
                                     17 	.globl _Producer
                                     18 	.globl _ThreadExit
                                     19 	.globl _ThreadYield
                                     20 	.globl _ThreadCreate
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _PS
                                     30 	.globl _PT1
                                     31 	.globl _PX1
                                     32 	.globl _PT0
                                     33 	.globl _PX0
                                     34 	.globl _RD
                                     35 	.globl _WR
                                     36 	.globl _T1
                                     37 	.globl _T0
                                     38 	.globl _INT1
                                     39 	.globl _INT0
                                     40 	.globl _TXD
                                     41 	.globl _RXD
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _EA
                                     51 	.globl _ES
                                     52 	.globl _ET1
                                     53 	.globl _EX1
                                     54 	.globl _ET0
                                     55 	.globl _EX0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _SM0
                                     65 	.globl _SM1
                                     66 	.globl _SM2
                                     67 	.globl _REN
                                     68 	.globl _TB8
                                     69 	.globl _RB8
                                     70 	.globl _TI
                                     71 	.globl _RI
                                     72 	.globl _P1_7
                                     73 	.globl _P1_6
                                     74 	.globl _P1_5
                                     75 	.globl _P1_4
                                     76 	.globl _P1_3
                                     77 	.globl _P1_2
                                     78 	.globl _P1_1
                                     79 	.globl _P1_0
                                     80 	.globl _TF1
                                     81 	.globl _TR1
                                     82 	.globl _TF0
                                     83 	.globl _TR0
                                     84 	.globl _IE1
                                     85 	.globl _IT1
                                     86 	.globl _IE0
                                     87 	.globl _IT0
                                     88 	.globl _P0_7
                                     89 	.globl _P0_6
                                     90 	.globl _P0_5
                                     91 	.globl _P0_4
                                     92 	.globl _P0_3
                                     93 	.globl _P0_2
                                     94 	.globl _P0_1
                                     95 	.globl _P0_0
                                     96 	.globl _B
                                     97 	.globl _ACC
                                     98 	.globl _PSW
                                     99 	.globl _IP
                                    100 	.globl _P3
                                    101 	.globl _IE
                                    102 	.globl _P2
                                    103 	.globl _SBUF
                                    104 	.globl _SCON
                                    105 	.globl _P1
                                    106 	.globl _TH1
                                    107 	.globl _TH0
                                    108 	.globl _TL1
                                    109 	.globl _TL0
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _PCON
                                    113 	.globl _DPH
                                    114 	.globl _DPL
                                    115 	.globl _SP
                                    116 	.globl _P0
                                    117 	.globl _proof
                                    118 	.globl _buffer_temp
                                    119 	.globl _buffer
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
                                    235 ;--------------------------------------------------------
                                    236 ; overlayable items in internal ram 
                                    237 ;--------------------------------------------------------
                                    238 ;--------------------------------------------------------
                                    239 ; Stack segment in internal ram 
                                    240 ;--------------------------------------------------------
                                    241 	.area	SSEG
      000008                        242 __start__stack:
      000008                        243 	.ds	1
                                    244 
                                    245 ;--------------------------------------------------------
                                    246 ; indirectly addressable internal ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area ISEG    (DATA)
                           000032   249 _buffer	=	0x0032
                           000040   250 _buffer_temp	=	0x0040
                           00003F   251 _proof	=	0x003f
                                    252 ;--------------------------------------------------------
                                    253 ; absolute internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area IABS    (ABS,DATA)
                                    256 	.area IABS    (ABS,DATA)
                                    257 ;--------------------------------------------------------
                                    258 ; bit data
                                    259 ;--------------------------------------------------------
                                    260 	.area BSEG    (BIT)
                                    261 ;--------------------------------------------------------
                                    262 ; paged external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area PSEG    (PAG,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XSEG    (XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; absolute external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XABS    (ABS,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; external initialized ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XISEG   (XDATA)
                                    277 	.area HOME    (CODE)
                                    278 	.area GSINIT0 (CODE)
                                    279 	.area GSINIT1 (CODE)
                                    280 	.area GSINIT2 (CODE)
                                    281 	.area GSINIT3 (CODE)
                                    282 	.area GSINIT4 (CODE)
                                    283 	.area GSINIT5 (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.area GSFINAL (CODE)
                                    286 	.area CSEG    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; interrupt vector 
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
      000000                        291 __interrupt_vect:
      000000 02 00 7E         [24]  292 	ljmp	__sdcc_gsinit_startup
                                    293 ;--------------------------------------------------------
                                    294 ; global & static initialisations
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 	.area GSFINAL (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.globl __sdcc_gsinit_startup
                                    301 	.globl __sdcc_program_startup
                                    302 	.globl __start__stack
                                    303 	.globl __mcs51_genXINIT
                                    304 	.globl __mcs51_genXRAMCLEAR
                                    305 	.globl __mcs51_genRAMCLEAR
                                    306 	.area GSFINAL (CODE)
      000006 02 00 03         [24]  307 	ljmp	__sdcc_program_startup
                                    308 ;--------------------------------------------------------
                                    309 ; Home
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area HOME    (CODE)
      000003                        313 __sdcc_program_startup:
      000003 02 00 5D         [24]  314 	ljmp	_main
                                    315 ;	return from main will return to caller
                                    316 ;--------------------------------------------------------
                                    317 ; code
                                    318 ;--------------------------------------------------------
                                    319 	.area CSEG    (CODE)
                                    320 ;------------------------------------------------------------
                                    321 ;Allocation info for local variables in function 'Producer'
                                    322 ;------------------------------------------------------------
                                    323 ;	testcoop.c:26: void Producer(void)
                                    324 ;	-----------------------------------------
                                    325 ;	 function Producer
                                    326 ;	-----------------------------------------
      000009                        327 _Producer:
                           000007   328 	ar7 = 0x07
                           000006   329 	ar6 = 0x06
                           000005   330 	ar5 = 0x05
                           000004   331 	ar4 = 0x04
                           000003   332 	ar3 = 0x03
                           000002   333 	ar2 = 0x02
                           000001   334 	ar1 = 0x01
                           000000   335 	ar0 = 0x00
                                    336 ;	testcoop.c:33: buffer = 0;
      000009 78 32            [12]  337 	mov	r0,#_buffer
      00000B 76 00            [12]  338 	mov	@r0,#0x00
                                    339 ;	testcoop.c:34: buffer_temp = 'a';
      00000D 78 40            [12]  340 	mov	r0,#_buffer_temp
      00000F 76 61            [12]  341 	mov	@r0,#0x61
                                    342 ;	testcoop.c:35: while (1)
      000011                        343 00108$:
                                    344 ;	testcoop.c:37: proof = 1;
      000011 78 3F            [12]  345 	mov	r0,#_proof
      000013 76 01            [12]  346 	mov	@r0,#0x01
                                    347 ;	testcoop.c:41: if (buffer != 0)
      000015 78 32            [12]  348 	mov	r0,#_buffer
      000017 E6               [12]  349 	mov	a,@r0
      000018 60 05            [24]  350 	jz	00105$
                                    351 ;	testcoop.c:42: ThreadYield();
      00001A 12 01 39         [24]  352 	lcall	_ThreadYield
      00001D 80 F2            [24]  353 	sjmp	00108$
      00001F                        354 00105$:
                                    355 ;	testcoop.c:45: buffer = buffer_temp;
      00001F 78 40            [12]  356 	mov	r0,#_buffer_temp
      000021 79 32            [12]  357 	mov	r1,#_buffer
      000023 E6               [12]  358 	mov	a,@r0
      000024 F7               [12]  359 	mov	@r1,a
                                    360 ;	testcoop.c:46: if (buffer_temp == 'z')
      000025 78 40            [12]  361 	mov	r0,#_buffer_temp
      000027 B6 7A 06         [24]  362 	cjne	@r0,#0x7a,00102$
                                    363 ;	testcoop.c:47: buffer_temp = 'a';
      00002A 78 40            [12]  364 	mov	r0,#_buffer_temp
      00002C 76 61            [12]  365 	mov	@r0,#0x61
      00002E 80 E1            [24]  366 	sjmp	00108$
      000030                        367 00102$:
                                    368 ;	testcoop.c:49: buffer_temp++;
      000030 78 40            [12]  369 	mov	r0,#_buffer_temp
      000032 06               [12]  370 	inc	@r0
                                    371 ;	testcoop.c:52: }
      000033 80 DC            [24]  372 	sjmp	00108$
                                    373 ;------------------------------------------------------------
                                    374 ;Allocation info for local variables in function 'Consumer'
                                    375 ;------------------------------------------------------------
                                    376 ;	testcoop.c:59: void Consumer(void)
                                    377 ;	-----------------------------------------
                                    378 ;	 function Consumer
                                    379 ;	-----------------------------------------
      000035                        380 _Consumer:
                                    381 ;	testcoop.c:62: TMOD = 0x20;
      000035 75 89 20         [24]  382 	mov	_TMOD,#0x20
                                    383 ;	testcoop.c:63: TH1 = -6;
      000038 75 8D FA         [24]  384 	mov	_TH1,#0xfa
                                    385 ;	testcoop.c:64: SCON = 0x50;
      00003B 75 98 50         [24]  386 	mov	_SCON,#0x50
                                    387 ;	testcoop.c:65: TR1 = 1;
                                    388 ;	assignBit
      00003E D2 8E            [12]  389 	setb	_TR1
                                    390 ;	testcoop.c:68: proof = 2;
      000040 78 3F            [12]  391 	mov	r0,#_proof
      000042 76 02            [12]  392 	mov	@r0,#0x02
                                    393 ;	testcoop.c:74: while (1)
      000044                        394 00108$:
                                    395 ;	testcoop.c:76: if (buffer == 0)
      000044 78 32            [12]  396 	mov	r0,#_buffer
      000046 E6               [12]  397 	mov	a,@r0
      000047 70 05            [24]  398 	jnz	00105$
                                    399 ;	testcoop.c:78: ThreadYield();
      000049 12 01 39         [24]  400 	lcall	_ThreadYield
      00004C 80 F6            [24]  401 	sjmp	00108$
      00004E                        402 00105$:
                                    403 ;	testcoop.c:82: TI = 0;
                                    404 ;	assignBit
      00004E C2 99            [12]  405 	clr	_TI
                                    406 ;	testcoop.c:83: SBUF = buffer;
      000050 78 32            [12]  407 	mov	r0,#_buffer
      000052 86 99            [24]  408 	mov	_SBUF,@r0
                                    409 ;	testcoop.c:84: while (!TI)
      000054                        410 00101$:
      000054 30 99 FD         [24]  411 	jnb	_TI,00101$
                                    412 ;	testcoop.c:87: buffer = 0;
      000057 78 32            [12]  413 	mov	r0,#_buffer
      000059 76 00            [12]  414 	mov	@r0,#0x00
                                    415 ;	testcoop.c:91: }
      00005B 80 E7            [24]  416 	sjmp	00108$
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'main'
                                    419 ;------------------------------------------------------------
                                    420 ;	testcoop.c:98: void main(void)
                                    421 ;	-----------------------------------------
                                    422 ;	 function main
                                    423 ;	-----------------------------------------
      00005D                        424 _main:
                                    425 ;	testcoop.c:106: proof=0;
      00005D 78 3F            [12]  426 	mov	r0,#_proof
      00005F 76 00            [12]  427 	mov	@r0,#0x00
                                    428 ;	testcoop.c:107: buffer = 0;
      000061 78 32            [12]  429 	mov	r0,#_buffer
      000063 76 00            [12]  430 	mov	@r0,#0x00
                                    431 ;	testcoop.c:108: buffer_temp = 'a';
      000065 78 40            [12]  432 	mov	r0,#_buffer_temp
      000067 76 61            [12]  433 	mov	@r0,#0x61
                                    434 ;	testcoop.c:109: SBUF = 0;
      000069 75 99 00         [24]  435 	mov	_SBUF,#0x00
                                    436 ;	testcoop.c:110: TH1 = -6;
      00006C 75 8D FA         [24]  437 	mov	_TH1,#0xfa
                                    438 ;	testcoop.c:112: ThreadCreate(Producer);
      00006F 90 00 09         [24]  439 	mov	dptr,#_Producer
      000072 12 00 BB         [24]  440 	lcall	_ThreadCreate
                                    441 ;	testcoop.c:113: ThreadCreate(Consumer);
      000075 90 00 35         [24]  442 	mov	dptr,#_Consumer
      000078 12 00 BB         [24]  443 	lcall	_ThreadCreate
                                    444 ;	testcoop.c:114: ThreadExit();
                                    445 ;	testcoop.c:115: }
      00007B 02 01 79         [24]  446 	ljmp	_ThreadExit
                                    447 ;------------------------------------------------------------
                                    448 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    449 ;------------------------------------------------------------
                                    450 ;	testcoop.c:117: void _sdcc_gsinit_startup(void)
                                    451 ;	-----------------------------------------
                                    452 ;	 function _sdcc_gsinit_startup
                                    453 ;	-----------------------------------------
      00007E                        454 __sdcc_gsinit_startup:
                                    455 ;	testcoop.c:120: __endasm;
      00007E 02 00 85         [24]  456 	ljmp	_Bootstrap
                                    457 ;	testcoop.c:121: }
      000081 22               [24]  458 	ret
                                    459 ;------------------------------------------------------------
                                    460 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    461 ;------------------------------------------------------------
                                    462 ;	testcoop.c:123: void _mcs51_genRAMCLEAR(void) {}
                                    463 ;	-----------------------------------------
                                    464 ;	 function _mcs51_genRAMCLEAR
                                    465 ;	-----------------------------------------
      000082                        466 __mcs51_genRAMCLEAR:
      000082 22               [24]  467 	ret
                                    468 ;------------------------------------------------------------
                                    469 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    470 ;------------------------------------------------------------
                                    471 ;	testcoop.c:124: void _mcs51_genXINIT(void) {}
                                    472 ;	-----------------------------------------
                                    473 ;	 function _mcs51_genXINIT
                                    474 ;	-----------------------------------------
      000083                        475 __mcs51_genXINIT:
      000083 22               [24]  476 	ret
                                    477 ;------------------------------------------------------------
                                    478 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    479 ;------------------------------------------------------------
                                    480 ;	testcoop.c:125: void _mcs51_genXRAMCLEAR(void) {}
                                    481 ;	-----------------------------------------
                                    482 ;	 function _mcs51_genXRAMCLEAR
                                    483 ;	-----------------------------------------
      000084                        484 __mcs51_genXRAMCLEAR:
      000084 22               [24]  485 	ret
                                    486 	.area CSEG    (CODE)
                                    487 	.area CONST   (CODE)
                                    488 	.area XINIT   (CODE)
                                    489 	.area CABS    (ABS,CODE)
