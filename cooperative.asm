;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.8.0 #10562 (MINGW64)
;--------------------------------------------------------
	.module cooperative
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Bootstrap
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _i
	.globl _IDsave
	.globl _SP_save
	.globl _IDnum
	.globl _bitmap
	.globl _SSPointers
	.globl _ThreadCreate
	.globl _ThreadYield
	.globl _ThreadExit
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_SSPointers	=	0x0020
_bitmap	=	0x0024
_IDnum	=	0x0028
_SP_save	=	0x002a
_IDsave	=	0x002b
_i	=	0x002c
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Bootstrap'
;------------------------------------------------------------
;	cooperative.c:76: void Bootstrap(void)
;	-----------------------------------------
;	 function Bootstrap
;	-----------------------------------------
_Bootstrap:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	cooperative.c:90: for (i = 0; i < MAXTHREADS; i++)
	mov	r0,#_i
	mov	@r0,#0x00
00103$:
	mov	r0,#_i
	cjne	@r0,#0x04,00115$
00115$:
	jnc	00101$
;	cooperative.c:92: bitmap[i] = 0;
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x00
;	cooperative.c:90: for (i = 0; i < MAXTHREADS; i++)
	mov	r0,#_i
	inc	@r0
	sjmp	00103$
00101$:
;	cooperative.c:94: IDnum = ThreadCreate(main);
	mov	dptr,#_main
	lcall	_ThreadCreate
	mov	a,dpl
	mov	r0,#_IDnum
	mov	@r0,a
;	cooperative.c:95: RESTORESTATE;
	mov	r0,#_IDnum
	mov	a,@r0
	add	a,#_SSPointers
	mov	r1,a
	mov	_SP,@r1
	pop	PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
;	cooperative.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadCreate'
;------------------------------------------------------------
;fp                        Allocated to registers 
;------------------------------------------------------------
;	cooperative.c:104: ThreadID ThreadCreate(FunctionPtr fp)
;	-----------------------------------------
;	 function ThreadCreate
;	-----------------------------------------
_ThreadCreate:
;	cooperative.c:111: for (i = 0; i < MAXTHREADS; i++)
	mov	r0,#_i
	mov	@r0,#0x00
00110$:
	mov	r0,#_i
	cjne	@r0,#0x04,00145$
00145$:
	jnc	00103$
;	cooperative.c:112: if (!bitmap[i])
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	a,@r1
	jz	00103$
;	cooperative.c:111: for (i = 0; i < MAXTHREADS; i++)
	mov	r0,#_i
	inc	@r0
	sjmp	00110$
00103$:
;	cooperative.c:114: if (i == MAXTHREADS)
	mov	r0,#_i
	cjne	@r0,#0x04,00105$
;	cooperative.c:116: return -1;
	mov	dpl,#0xff
	ret
00105$:
;	cooperative.c:123: for (i = 0; i < MAXTHREADS; i++)
	mov	r0,#_i
	mov	@r0,#0x00
00113$:
	mov	r0,#_i
	cjne	@r0,#0x04,00150$
00150$:
	jnc	00108$
;	cooperative.c:124: if (!bitmap[i])
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	a,@r1
	jz	00108$
;	cooperative.c:123: for (i = 0; i < MAXTHREADS; i++)
	mov	r0,#_i
	inc	@r0
	sjmp	00113$
00108$:
;	cooperative.c:131: SP_save = SP;
	mov	r0,#_SP_save
	mov	@r0,_SP
;	cooperative.c:132: bitmap[i] = 1;
	mov	r0,#_i
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x01
;	cooperative.c:133: SP = 0x3F + i * 0x10;
	mov	r0,#_i
	mov	a,@r0
	swap	a
	anl	a,#0xf0
	add	a,#0x3f
	mov	_SP,a
;	cooperative.c:134: IDsave = i<<3;
	mov	r0,#_i
	mov	ar7,@r0
	mov	r0,#_IDsave
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	mov	@r0,a
;	cooperative.c:159: __endasm;
	push	DPL
	push	DPH
	mov	a,#0x00
	push	a
	push	a
	push	a
	push	a
;	cooperative.c:174: __endasm;
	push	_IDsave
;	cooperative.c:179: SSPointers[i] = SP;
	mov	r0,#_i
	mov	a,@r0
	add	a,#_SSPointers
	mov	r0,a
	mov	@r0,_SP
;	cooperative.c:180: SP = SP_save;
	mov	r0,#_SP_save
	mov	_SP,@r0
;	cooperative.c:182: return i;  
	mov	r0,#_i
	mov	dpl,@r0
;	cooperative.c:183: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadYield'
;------------------------------------------------------------
;	cooperative.c:192: void ThreadYield(void)
;	-----------------------------------------
;	 function ThreadYield
;	-----------------------------------------
_ThreadYield:
;	cooperative.c:194: SAVESTATE;
	push	ACC 
	push B 
	push DPL 
	push DPH 
	push PSW 
	clr RS1 
	clr RS0 
	mov	r0,#_IDnum
	mov	a,@r0
	add	a,#_SSPointers
	mov	r0,a
	mov	@r0,_SP
;	cooperative.c:195: do
00106$:
;	cooperative.c:206: if (IDnum == MAXTHREADS - 1)
	mov	r0,#_IDnum
	cjne	@r0,#0x03,00102$
;	cooperative.c:208: IDnum = 0;
	mov	r0,#_IDnum
	mov	@r0,#0x00
	sjmp	00103$
00102$:
;	cooperative.c:212: IDnum++;
	mov	r0,#_IDnum
	inc	@r0
00103$:
;	cooperative.c:214: if (bitmap[IDnum] > 0)
	mov	r0,#_IDnum
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	a,@r1
	jz	00106$
;	cooperative.c:217: RESTORESTATE;
	mov	r0,#_IDnum
	mov	a,@r0
	add	a,#_SSPointers
	mov	r1,a
	mov	_SP,@r1
	pop	PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
;	cooperative.c:218: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ThreadExit'
;------------------------------------------------------------
;	cooperative.c:225: void ThreadExit(void)
;	-----------------------------------------
;	 function ThreadExit
;	-----------------------------------------
_ThreadExit:
;	cooperative.c:233: bitmap[IDnum] = 0;
	mov	r0,#_IDnum
	mov	a,@r0
	add	a,#_bitmap
	mov	r0,a
	mov	@r0,#0x00
;	cooperative.c:234: while (bitmap[IDnum] <= 0)
00104$:
	mov	r0,#_IDnum
	mov	a,@r0
	add	a,#_bitmap
	mov	r1,a
	mov	a,@r1
	jnz	00106$
;	cooperative.c:236: if (IDnum == MAXTHREADS - 1)
	mov	r0,#_IDnum
	cjne	@r0,#0x03,00102$
;	cooperative.c:238: IDnum = 0;
	mov	r0,#_IDnum
	mov	@r0,#0x00
	sjmp	00104$
00102$:
;	cooperative.c:242: IDnum++;
	mov	r0,#_IDnum
	inc	@r0
	sjmp	00104$
00106$:
;	cooperative.c:245: RESTORESTATE;
	mov	r0,#_IDnum
	mov	a,@r0
	add	a,#_SSPointers
	mov	r1,a
	mov	_SP,@r1
	pop	PSW 
	pop DPH 
	pop DPL 
	pop B 
	pop ACC 
;	cooperative.c:246: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
