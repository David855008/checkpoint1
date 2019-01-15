                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.8.0 #10562 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module cooperative
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Bootstrap
                                     12 	.globl _main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _i
                                    110 	.globl _IDsave
                                    111 	.globl _SP_save
                                    112 	.globl _IDnum
                                    113 	.globl _bitmap
                                    114 	.globl _SSPointers
                                    115 	.globl _ThreadCreate
                                    116 	.globl _ThreadYield
                                    117 	.globl _ThreadExit
                                    118 ;--------------------------------------------------------
                                    119 ; special function registers
                                    120 ;--------------------------------------------------------
                                    121 	.area RSEG    (ABS,DATA)
      000000                        122 	.org 0x0000
                           000080   123 _P0	=	0x0080
                           000081   124 _SP	=	0x0081
                           000082   125 _DPL	=	0x0082
                           000083   126 _DPH	=	0x0083
                           000087   127 _PCON	=	0x0087
                           000088   128 _TCON	=	0x0088
                           000089   129 _TMOD	=	0x0089
                           00008A   130 _TL0	=	0x008a
                           00008B   131 _TL1	=	0x008b
                           00008C   132 _TH0	=	0x008c
                           00008D   133 _TH1	=	0x008d
                           000090   134 _P1	=	0x0090
                           000098   135 _SCON	=	0x0098
                           000099   136 _SBUF	=	0x0099
                           0000A0   137 _P2	=	0x00a0
                           0000A8   138 _IE	=	0x00a8
                           0000B0   139 _P3	=	0x00b0
                           0000B8   140 _IP	=	0x00b8
                           0000D0   141 _PSW	=	0x00d0
                           0000E0   142 _ACC	=	0x00e0
                           0000F0   143 _B	=	0x00f0
                                    144 ;--------------------------------------------------------
                                    145 ; special function bits
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0_0	=	0x0080
                           000081   150 _P0_1	=	0x0081
                           000082   151 _P0_2	=	0x0082
                           000083   152 _P0_3	=	0x0083
                           000084   153 _P0_4	=	0x0084
                           000085   154 _P0_5	=	0x0085
                           000086   155 _P0_6	=	0x0086
                           000087   156 _P0_7	=	0x0087
                           000088   157 _IT0	=	0x0088
                           000089   158 _IE0	=	0x0089
                           00008A   159 _IT1	=	0x008a
                           00008B   160 _IE1	=	0x008b
                           00008C   161 _TR0	=	0x008c
                           00008D   162 _TF0	=	0x008d
                           00008E   163 _TR1	=	0x008e
                           00008F   164 _TF1	=	0x008f
                           000090   165 _P1_0	=	0x0090
                           000091   166 _P1_1	=	0x0091
                           000092   167 _P1_2	=	0x0092
                           000093   168 _P1_3	=	0x0093
                           000094   169 _P1_4	=	0x0094
                           000095   170 _P1_5	=	0x0095
                           000096   171 _P1_6	=	0x0096
                           000097   172 _P1_7	=	0x0097
                           000098   173 _RI	=	0x0098
                           000099   174 _TI	=	0x0099
                           00009A   175 _RB8	=	0x009a
                           00009B   176 _TB8	=	0x009b
                           00009C   177 _REN	=	0x009c
                           00009D   178 _SM2	=	0x009d
                           00009E   179 _SM1	=	0x009e
                           00009F   180 _SM0	=	0x009f
                           0000A0   181 _P2_0	=	0x00a0
                           0000A1   182 _P2_1	=	0x00a1
                           0000A2   183 _P2_2	=	0x00a2
                           0000A3   184 _P2_3	=	0x00a3
                           0000A4   185 _P2_4	=	0x00a4
                           0000A5   186 _P2_5	=	0x00a5
                           0000A6   187 _P2_6	=	0x00a6
                           0000A7   188 _P2_7	=	0x00a7
                           0000A8   189 _EX0	=	0x00a8
                           0000A9   190 _ET0	=	0x00a9
                           0000AA   191 _EX1	=	0x00aa
                           0000AB   192 _ET1	=	0x00ab
                           0000AC   193 _ES	=	0x00ac
                           0000AF   194 _EA	=	0x00af
                           0000B0   195 _P3_0	=	0x00b0
                           0000B1   196 _P3_1	=	0x00b1
                           0000B2   197 _P3_2	=	0x00b2
                           0000B3   198 _P3_3	=	0x00b3
                           0000B4   199 _P3_4	=	0x00b4
                           0000B5   200 _P3_5	=	0x00b5
                           0000B6   201 _P3_6	=	0x00b6
                           0000B7   202 _P3_7	=	0x00b7
                           0000B0   203 _RXD	=	0x00b0
                           0000B1   204 _TXD	=	0x00b1
                           0000B2   205 _INT0	=	0x00b2
                           0000B3   206 _INT1	=	0x00b3
                           0000B4   207 _T0	=	0x00b4
                           0000B5   208 _T1	=	0x00b5
                           0000B6   209 _WR	=	0x00b6
                           0000B7   210 _RD	=	0x00b7
                           0000B8   211 _PX0	=	0x00b8
                           0000B9   212 _PT0	=	0x00b9
                           0000BA   213 _PX1	=	0x00ba
                           0000BB   214 _PT1	=	0x00bb
                           0000BC   215 _PS	=	0x00bc
                           0000D0   216 _P	=	0x00d0
                           0000D1   217 _F1	=	0x00d1
                           0000D2   218 _OV	=	0x00d2
                           0000D3   219 _RS0	=	0x00d3
                           0000D4   220 _RS1	=	0x00d4
                           0000D5   221 _F0	=	0x00d5
                           0000D6   222 _AC	=	0x00d6
                           0000D7   223 _CY	=	0x00d7
                                    224 ;--------------------------------------------------------
                                    225 ; overlayable register banks
                                    226 ;--------------------------------------------------------
                                    227 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        228 	.ds 8
                                    229 ;--------------------------------------------------------
                                    230 ; internal ram data
                                    231 ;--------------------------------------------------------
                                    232 	.area DSEG    (DATA)
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable items in internal ram 
                                    235 ;--------------------------------------------------------
                                    236 	.area	OSEG    (OVR,DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; indirectly addressable internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area ISEG    (DATA)
                           000020   241 _SSPointers	=	0x0020
                           000024   242 _bitmap	=	0x0024
                           000028   243 _IDnum	=	0x0028
                           00002A   244 _SP_save	=	0x002a
                           00002B   245 _IDsave	=	0x002b
                           00002C   246 _i	=	0x002c
                                    247 ;--------------------------------------------------------
                                    248 ; absolute internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area IABS    (ABS,DATA)
                                    251 	.area IABS    (ABS,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; bit data
                                    254 ;--------------------------------------------------------
                                    255 	.area BSEG    (BIT)
                                    256 ;--------------------------------------------------------
                                    257 ; paged external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area PSEG    (PAG,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XSEG    (XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XABS    (ABS,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; external initialized ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XISEG   (XDATA)
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT0 (CODE)
                                    274 	.area GSINIT1 (CODE)
                                    275 	.area GSINIT2 (CODE)
                                    276 	.area GSINIT3 (CODE)
                                    277 	.area GSINIT4 (CODE)
                                    278 	.area GSINIT5 (CODE)
                                    279 	.area GSINIT  (CODE)
                                    280 	.area GSFINAL (CODE)
                                    281 	.area CSEG    (CODE)
                                    282 ;--------------------------------------------------------
                                    283 ; global & static initialisations
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
                                    286 	.area GSINIT  (CODE)
                                    287 	.area GSFINAL (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 ;--------------------------------------------------------
                                    290 ; Home
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
                                    293 	.area HOME    (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; code
                                    296 ;--------------------------------------------------------
                                    297 	.area CSEG    (CODE)
                                    298 ;------------------------------------------------------------
                                    299 ;Allocation info for local variables in function 'Bootstrap'
                                    300 ;------------------------------------------------------------
                                    301 ;	cooperative.c:76: void Bootstrap(void)
                                    302 ;	-----------------------------------------
                                    303 ;	 function Bootstrap
                                    304 ;	-----------------------------------------
      000085                        305 _Bootstrap:
                           000007   306 	ar7 = 0x07
                           000006   307 	ar6 = 0x06
                           000005   308 	ar5 = 0x05
                           000004   309 	ar4 = 0x04
                           000003   310 	ar3 = 0x03
                           000002   311 	ar2 = 0x02
                           000001   312 	ar1 = 0x01
                           000000   313 	ar0 = 0x00
                                    314 ;	cooperative.c:90: for (i = 0; i < MAXTHREADS; i++)
      000085 78 2C            [12]  315 	mov	r0,#_i
      000087 76 00            [12]  316 	mov	@r0,#0x00
      000089                        317 00103$:
      000089 78 2C            [12]  318 	mov	r0,#_i
      00008B B6 04 00         [24]  319 	cjne	@r0,#0x04,00115$
      00008E                        320 00115$:
      00008E 50 0D            [24]  321 	jnc	00101$
                                    322 ;	cooperative.c:92: bitmap[i] = 0;
      000090 78 2C            [12]  323 	mov	r0,#_i
      000092 E6               [12]  324 	mov	a,@r0
      000093 24 24            [12]  325 	add	a,#_bitmap
      000095 F8               [12]  326 	mov	r0,a
      000096 76 00            [12]  327 	mov	@r0,#0x00
                                    328 ;	cooperative.c:90: for (i = 0; i < MAXTHREADS; i++)
      000098 78 2C            [12]  329 	mov	r0,#_i
      00009A 06               [12]  330 	inc	@r0
      00009B 80 EC            [24]  331 	sjmp	00103$
      00009D                        332 00101$:
                                    333 ;	cooperative.c:94: IDnum = ThreadCreate(main);
      00009D 90 00 5D         [24]  334 	mov	dptr,#_main
      0000A0 12 00 BB         [24]  335 	lcall	_ThreadCreate
      0000A3 E5 82            [12]  336 	mov	a,dpl
      0000A5 78 28            [12]  337 	mov	r0,#_IDnum
      0000A7 F6               [12]  338 	mov	@r0,a
                                    339 ;	cooperative.c:95: RESTORESTATE;
      0000A8 78 28            [12]  340 	mov	r0,#_IDnum
      0000AA E6               [12]  341 	mov	a,@r0
      0000AB 24 20            [12]  342 	add	a,#_SSPointers
      0000AD F9               [12]  343 	mov	r1,a
      0000AE 87 81            [24]  344 	mov	_SP,@r1
      0000B0 D0 D0            [24]  345 	pop	PSW 
      0000B2 D0 83            [24]  346 	pop DPH 
      0000B4 D0 82            [24]  347 	pop DPL 
      0000B6 D0 F0            [24]  348 	pop B 
      0000B8 D0 E0            [24]  349 	pop ACC 
                                    350 ;	cooperative.c:96: }
      0000BA 22               [24]  351 	ret
                                    352 ;------------------------------------------------------------
                                    353 ;Allocation info for local variables in function 'ThreadCreate'
                                    354 ;------------------------------------------------------------
                                    355 ;fp                        Allocated to registers 
                                    356 ;------------------------------------------------------------
                                    357 ;	cooperative.c:104: ThreadID ThreadCreate(FunctionPtr fp)
                                    358 ;	-----------------------------------------
                                    359 ;	 function ThreadCreate
                                    360 ;	-----------------------------------------
      0000BB                        361 _ThreadCreate:
                                    362 ;	cooperative.c:111: for (i = 0; i < MAXTHREADS; i++)
      0000BB 78 2C            [12]  363 	mov	r0,#_i
      0000BD 76 00            [12]  364 	mov	@r0,#0x00
      0000BF                        365 00110$:
      0000BF 78 2C            [12]  366 	mov	r0,#_i
      0000C1 B6 04 00         [24]  367 	cjne	@r0,#0x04,00145$
      0000C4                        368 00145$:
      0000C4 50 0E            [24]  369 	jnc	00103$
                                    370 ;	cooperative.c:112: if (!bitmap[i])
      0000C6 78 2C            [12]  371 	mov	r0,#_i
      0000C8 E6               [12]  372 	mov	a,@r0
      0000C9 24 24            [12]  373 	add	a,#_bitmap
      0000CB F9               [12]  374 	mov	r1,a
      0000CC E7               [12]  375 	mov	a,@r1
      0000CD 60 05            [24]  376 	jz	00103$
                                    377 ;	cooperative.c:111: for (i = 0; i < MAXTHREADS; i++)
      0000CF 78 2C            [12]  378 	mov	r0,#_i
      0000D1 06               [12]  379 	inc	@r0
      0000D2 80 EB            [24]  380 	sjmp	00110$
      0000D4                        381 00103$:
                                    382 ;	cooperative.c:114: if (i == MAXTHREADS)
      0000D4 78 2C            [12]  383 	mov	r0,#_i
      0000D6 B6 04 04         [24]  384 	cjne	@r0,#0x04,00105$
                                    385 ;	cooperative.c:116: return -1;
      0000D9 75 82 FF         [24]  386 	mov	dpl,#0xff
      0000DC 22               [24]  387 	ret
      0000DD                        388 00105$:
                                    389 ;	cooperative.c:123: for (i = 0; i < MAXTHREADS; i++)
      0000DD 78 2C            [12]  390 	mov	r0,#_i
      0000DF 76 00            [12]  391 	mov	@r0,#0x00
      0000E1                        392 00113$:
      0000E1 78 2C            [12]  393 	mov	r0,#_i
      0000E3 B6 04 00         [24]  394 	cjne	@r0,#0x04,00150$
      0000E6                        395 00150$:
      0000E6 50 0E            [24]  396 	jnc	00108$
                                    397 ;	cooperative.c:124: if (!bitmap[i])
      0000E8 78 2C            [12]  398 	mov	r0,#_i
      0000EA E6               [12]  399 	mov	a,@r0
      0000EB 24 24            [12]  400 	add	a,#_bitmap
      0000ED F9               [12]  401 	mov	r1,a
      0000EE E7               [12]  402 	mov	a,@r1
      0000EF 60 05            [24]  403 	jz	00108$
                                    404 ;	cooperative.c:123: for (i = 0; i < MAXTHREADS; i++)
      0000F1 78 2C            [12]  405 	mov	r0,#_i
      0000F3 06               [12]  406 	inc	@r0
      0000F4 80 EB            [24]  407 	sjmp	00113$
      0000F6                        408 00108$:
                                    409 ;	cooperative.c:131: SP_save = SP;
      0000F6 78 2A            [12]  410 	mov	r0,#_SP_save
      0000F8 A6 81            [24]  411 	mov	@r0,_SP
                                    412 ;	cooperative.c:132: bitmap[i] = 1;
      0000FA 78 2C            [12]  413 	mov	r0,#_i
      0000FC E6               [12]  414 	mov	a,@r0
      0000FD 24 24            [12]  415 	add	a,#_bitmap
      0000FF F8               [12]  416 	mov	r0,a
      000100 76 01            [12]  417 	mov	@r0,#0x01
                                    418 ;	cooperative.c:133: SP = 0x3F + i * 0x10;
      000102 78 2C            [12]  419 	mov	r0,#_i
      000104 E6               [12]  420 	mov	a,@r0
      000105 C4               [12]  421 	swap	a
      000106 54 F0            [12]  422 	anl	a,#0xf0
      000108 24 3F            [12]  423 	add	a,#0x3f
      00010A F5 81            [12]  424 	mov	_SP,a
                                    425 ;	cooperative.c:134: IDsave = i<<3;
      00010C 78 2C            [12]  426 	mov	r0,#_i
      00010E 86 07            [24]  427 	mov	ar7,@r0
      000110 78 2B            [12]  428 	mov	r0,#_IDsave
      000112 EF               [12]  429 	mov	a,r7
      000113 C4               [12]  430 	swap	a
      000114 03               [12]  431 	rr	a
      000115 54 F8            [12]  432 	anl	a,#0xf8
      000117 F6               [12]  433 	mov	@r0,a
                                    434 ;	cooperative.c:159: __endasm;
      000118 C0 82            [24]  435 	push	DPL
      00011A C0 83            [24]  436 	push	DPH
      00011C 74 00            [12]  437 	mov	a,#0x00
      00011E C0 E0            [24]  438 	push	a
      000120 C0 E0            [24]  439 	push	a
      000122 C0 E0            [24]  440 	push	a
      000124 C0 E0            [24]  441 	push	a
                                    442 ;	cooperative.c:174: __endasm;
      000126 C0 2B            [24]  443 	push	_IDsave
                                    444 ;	cooperative.c:179: SSPointers[i] = SP;
      000128 78 2C            [12]  445 	mov	r0,#_i
      00012A E6               [12]  446 	mov	a,@r0
      00012B 24 20            [12]  447 	add	a,#_SSPointers
      00012D F8               [12]  448 	mov	r0,a
      00012E A6 81            [24]  449 	mov	@r0,_SP
                                    450 ;	cooperative.c:180: SP = SP_save;
      000130 78 2A            [12]  451 	mov	r0,#_SP_save
      000132 86 81            [24]  452 	mov	_SP,@r0
                                    453 ;	cooperative.c:182: return i;  
      000134 78 2C            [12]  454 	mov	r0,#_i
      000136 86 82            [24]  455 	mov	dpl,@r0
                                    456 ;	cooperative.c:183: }
      000138 22               [24]  457 	ret
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'ThreadYield'
                                    460 ;------------------------------------------------------------
                                    461 ;	cooperative.c:192: void ThreadYield(void)
                                    462 ;	-----------------------------------------
                                    463 ;	 function ThreadYield
                                    464 ;	-----------------------------------------
      000139                        465 _ThreadYield:
                                    466 ;	cooperative.c:194: SAVESTATE;
      000139 C0 E0            [24]  467 	push	ACC 
      00013B C0 F0            [24]  468 	push B 
      00013D C0 82            [24]  469 	push DPL 
      00013F C0 83            [24]  470 	push DPH 
      000141 C0 D0            [24]  471 	push PSW 
      000143 C2 D4            [12]  472 	clr RS1 
      000145 C2 D3            [12]  473 	clr RS0 
      000147 78 28            [12]  474 	mov	r0,#_IDnum
      000149 E6               [12]  475 	mov	a,@r0
      00014A 24 20            [12]  476 	add	a,#_SSPointers
      00014C F8               [12]  477 	mov	r0,a
      00014D A6 81            [24]  478 	mov	@r0,_SP
                                    479 ;	cooperative.c:195: do
      00014F                        480 00106$:
                                    481 ;	cooperative.c:206: if (IDnum == MAXTHREADS - 1)
      00014F 78 28            [12]  482 	mov	r0,#_IDnum
      000151 B6 03 06         [24]  483 	cjne	@r0,#0x03,00102$
                                    484 ;	cooperative.c:208: IDnum = 0;
      000154 78 28            [12]  485 	mov	r0,#_IDnum
      000156 76 00            [12]  486 	mov	@r0,#0x00
      000158 80 03            [24]  487 	sjmp	00103$
      00015A                        488 00102$:
                                    489 ;	cooperative.c:212: IDnum++;
      00015A 78 28            [12]  490 	mov	r0,#_IDnum
      00015C 06               [12]  491 	inc	@r0
      00015D                        492 00103$:
                                    493 ;	cooperative.c:214: if (bitmap[IDnum] > 0)
      00015D 78 28            [12]  494 	mov	r0,#_IDnum
      00015F E6               [12]  495 	mov	a,@r0
      000160 24 24            [12]  496 	add	a,#_bitmap
      000162 F9               [12]  497 	mov	r1,a
      000163 E7               [12]  498 	mov	a,@r1
      000164 60 E9            [24]  499 	jz	00106$
                                    500 ;	cooperative.c:217: RESTORESTATE;
      000166 78 28            [12]  501 	mov	r0,#_IDnum
      000168 E6               [12]  502 	mov	a,@r0
      000169 24 20            [12]  503 	add	a,#_SSPointers
      00016B F9               [12]  504 	mov	r1,a
      00016C 87 81            [24]  505 	mov	_SP,@r1
      00016E D0 D0            [24]  506 	pop	PSW 
      000170 D0 83            [24]  507 	pop DPH 
      000172 D0 82            [24]  508 	pop DPL 
      000174 D0 F0            [24]  509 	pop B 
      000176 D0 E0            [24]  510 	pop ACC 
                                    511 ;	cooperative.c:218: }
      000178 22               [24]  512 	ret
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'ThreadExit'
                                    515 ;------------------------------------------------------------
                                    516 ;	cooperative.c:225: void ThreadExit(void)
                                    517 ;	-----------------------------------------
                                    518 ;	 function ThreadExit
                                    519 ;	-----------------------------------------
      000179                        520 _ThreadExit:
                                    521 ;	cooperative.c:233: bitmap[IDnum] = 0;
      000179 78 28            [12]  522 	mov	r0,#_IDnum
      00017B E6               [12]  523 	mov	a,@r0
      00017C 24 24            [12]  524 	add	a,#_bitmap
      00017E F8               [12]  525 	mov	r0,a
      00017F 76 00            [12]  526 	mov	@r0,#0x00
                                    527 ;	cooperative.c:234: while (bitmap[IDnum] <= 0)
      000181                        528 00104$:
      000181 78 28            [12]  529 	mov	r0,#_IDnum
      000183 E6               [12]  530 	mov	a,@r0
      000184 24 24            [12]  531 	add	a,#_bitmap
      000186 F9               [12]  532 	mov	r1,a
      000187 E7               [12]  533 	mov	a,@r1
      000188 70 10            [24]  534 	jnz	00106$
                                    535 ;	cooperative.c:236: if (IDnum == MAXTHREADS - 1)
      00018A 78 28            [12]  536 	mov	r0,#_IDnum
      00018C B6 03 06         [24]  537 	cjne	@r0,#0x03,00102$
                                    538 ;	cooperative.c:238: IDnum = 0;
      00018F 78 28            [12]  539 	mov	r0,#_IDnum
      000191 76 00            [12]  540 	mov	@r0,#0x00
      000193 80 EC            [24]  541 	sjmp	00104$
      000195                        542 00102$:
                                    543 ;	cooperative.c:242: IDnum++;
      000195 78 28            [12]  544 	mov	r0,#_IDnum
      000197 06               [12]  545 	inc	@r0
      000198 80 E7            [24]  546 	sjmp	00104$
      00019A                        547 00106$:
                                    548 ;	cooperative.c:245: RESTORESTATE;
      00019A 78 28            [12]  549 	mov	r0,#_IDnum
      00019C E6               [12]  550 	mov	a,@r0
      00019D 24 20            [12]  551 	add	a,#_SSPointers
      00019F F9               [12]  552 	mov	r1,a
      0001A0 87 81            [24]  553 	mov	_SP,@r1
      0001A2 D0 D0            [24]  554 	pop	PSW 
      0001A4 D0 83            [24]  555 	pop DPH 
      0001A6 D0 82            [24]  556 	pop DPL 
      0001A8 D0 F0            [24]  557 	pop B 
      0001AA D0 E0            [24]  558 	pop ACC 
                                    559 ;	cooperative.c:246: }
      0001AC 22               [24]  560 	ret
                                    561 	.area CSEG    (CODE)
                                    562 	.area CONST   (CODE)
                                    563 	.area XINIT   (CODE)
                                    564 	.area CABS    (ABS,CODE)
