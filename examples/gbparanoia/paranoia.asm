;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Apr  7 2010) (MINGW32)
; This file was generated Wed Dec 20 16:20:15 2017
;--------------------------------------------------------
	.module paranoia
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UfNGrad
	.globl _SqRWrng
	.globl _IEEE
	.globl _Anomaly
	.globl _Monot
	.globl _NotMonot
	.globl _Done
	.globl _Break
	.globl _RSqrt
	.globl _RAddSub
	.globl _RDiv
	.globl _RMult
	.globl _GAddSub
	.globl _GDiv
	.globl _GMult
	.globl _N1
	.globl _N
	.globl _M
	.globl _PageNo
	.globl _Milestone
	.globl _fpecount
	.globl _ErrCnt
	.globl _Z9
	.globl _Z2
	.globl _Z1
	.globl _PseudoZero
	.globl _Z
	.globl _Random2
	.globl _Y2
	.globl _Y1
	.globl _Y
	.globl _Random1
	.globl _X8
	.globl _X2
	.globl _X1
	.globl _X
	.globl _W
	.globl _V9
	.globl _V0
	.globl _V
	.globl _U2
	.globl _U1
	.globl _UfThold
	.globl _OneUlp
	.globl _S
	.globl _Underflow
	.globl _T
	.globl _Random9
	.globl _R
	.globl _Q9
	.globl _Q
	.globl _Precision
	.globl _MyZero
	.globl _J
	.globl _StickyBit
	.globl _I
	.globl _HInvrse
	.globl _H
	.globl _F9
	.globl _F6
	.globl _Third
	.globl _E9
	.globl _MaxSqEr
	.globl _SqEr
	.globl _MinSqEr
	.globl _E3
	.globl _Exp2
	.globl _E1
	.globl _E0
	.globl _FourD
	.globl _D
	.globl _CInvrse
	.globl _C
	.globl _A1
	.globl _AInvrse
	.globl _ch
	.globl _Indx
	.globl _BMinusU2
	.globl _RadixD2
	.globl _BInvrse
	.globl _Radix
	.globl _sigsave
	.globl _ovfl_buf
	.globl _NoTrials
	.globl _OneAndHalf
	.globl _MinusOne
	.globl _TwoForty
	.globl _ThirtyTwo
	.globl _TwentySeven
	.globl _Nine
	.globl _Eight
	.globl _Five
	.globl _Four
	.globl _Three
	.globl _Two
	.globl _One
	.globl _Half
	.globl _Zero
	.globl _sigfpe
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
_ovfl_buf::
	.ds 4
_sigsave::
	.ds 2
_Radix::
	.ds 4
_BInvrse::
	.ds 4
_RadixD2::
	.ds 4
_BMinusU2::
	.ds 4
_Indx::
	.ds 2
_ch::
	.ds 8
_AInvrse::
	.ds 4
_A1::
	.ds 4
_C::
	.ds 4
_CInvrse::
	.ds 4
_D::
	.ds 4
_FourD::
	.ds 4
_E0::
	.ds 4
_E1::
	.ds 4
_Exp2::
	.ds 4
_E3::
	.ds 4
_MinSqEr::
	.ds 4
_SqEr::
	.ds 4
_MaxSqEr::
	.ds 4
_E9::
	.ds 4
_Third::
	.ds 4
_F6::
	.ds 4
_F9::
	.ds 4
_H::
	.ds 4
_HInvrse::
	.ds 4
_I::
	.ds 2
_StickyBit::
	.ds 4
_J::
	.ds 4
_MyZero::
	.ds 4
_Precision::
	.ds 4
_Q::
	.ds 4
_Q9::
	.ds 4
_R::
	.ds 4
_Random9::
	.ds 4
_T::
	.ds 4
_Underflow::
	.ds 4
_S::
	.ds 4
_OneUlp::
	.ds 4
_UfThold::
	.ds 4
_U1::
	.ds 4
_U2::
	.ds 4
_V::
	.ds 4
_V0::
	.ds 4
_V9::
	.ds 4
_W::
	.ds 4
_X::
	.ds 4
_X1::
	.ds 4
_X2::
	.ds 4
_X8::
	.ds 4
_Random1::
	.ds 4
_Y::
	.ds 4
_Y1::
	.ds 4
_Y2::
	.ds 4
_Random2::
	.ds 4
_Z::
	.ds 4
_PseudoZero::
	.ds 4
_Z1::
	.ds 4
_Z2::
	.ds 4
_Z9::
	.ds 4
_ErrCnt::
	.ds 8
_fpecount::
	.ds 2
_Milestone::
	.ds 2
_PageNo::
	.ds 2
_M::
	.ds 2
_N::
	.ds 2
_N1::
	.ds 2
_GMult::
	.ds 2
_GDiv::
	.ds 2
_GAddSub::
	.ds 2
_RMult::
	.ds 2
_RDiv::
	.ds 2
_RAddSub::
	.ds 2
_RSqrt::
	.ds 2
_Break::
	.ds 2
_Done::
	.ds 2
_NotMonot::
	.ds 2
_Monot::
	.ds 2
_Anomaly::
	.ds 2
_IEEE::
	.ds 2
_SqRWrng::
	.ds 2
_UfNGrad::
	.ds 2
;--------------------------------------------------------
; overlayable items in  ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;paranoia.c:51: int ErrCnt[4] = {0,0,0,0};
	ld	hl,#_ErrCnt
	call	__initrleblock
	.db	#-8,#0x00
	.db	0
;paranoia.c:54: int PageNo = 1;
	ld	hl,#_PageNo
	ld	(hl),#0x01
	ld	hl,#_PageNo + 1
	ld	(hl),#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;paranoia.c:66: sigfpe(INT x)
;	---------------------------------
; Function sigfpe
; ---------------------------------
_sigfpe:
	
;paranoia.c:68: fpecount++;
	ld	hl,#_fpecount
	inc	(hl)
	jr	NZ,00106$
	ld	hl,#_fpecount + 1
	inc	(hl)
00106$:
;paranoia.c:69: printf("\n* * * FLOATING-POINT ERROR %d * * *\n", x);
	lda	hl,2(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#__str_0
	push	hl
	call	_printf
	lda	sp,4(sp)
;paranoia.c:71: if (sigsave) {
	ld	hl,#_sigsave
	ld	a,(hl)
	ld	hl,#_sigsave + 1
	or	a,(hl)
	jp	Z,00102$
;paranoia.c:75: sigsave = 0;
	ld	hl,#_sigsave
	ld	(hl),#0x00
	ld	hl,#_sigsave + 1
	ld	(hl),#0x00
;paranoia.c:76: longjmp(ovfl_buf, 1);
	ld	hl,#0x0001
	push	hl
	ld	hl,#_ovfl_buf
	push	hl
	call	_longjmp
	lda	sp,4(sp)
00102$:
;paranoia.c:78: exit(1);
	ld	hl,#0x0001
	push	hl
	call	_exit
	lda	sp,2(sp)
00103$:
	
ret
_Zero:
	.byte #0x00,#0x00,#0x00,#0x00
_Half:
	.byte #0x00,#0x00,#0x00,#0x3F
_One:
	.byte #0x00,#0x00,#0x80,#0x3F
_Two:
	.byte #0x00,#0x00,#0x00,#0x40
_Three:
	.byte #0x00,#0x00,#0x40,#0x40
_Four:
	.byte #0x00,#0x00,#0x80,#0x40
_Five:
	.byte #0x00,#0x00,#0xA0,#0x40
_Eight:
	.byte #0x00,#0x00,#0x00,#0x41
_Nine:
	.byte #0x00,#0x00,#0x10,#0x41
_TwentySeven:
	.byte #0x00,#0x00,#0xD8,#0x41
_ThirtyTwo:
	.byte #0x00,#0x00,#0x00,#0x42
_TwoForty:
	.byte #0x00,#0x00,#0x70,#0x43
_MinusOne:
	.byte #0x00,#0x00,#0x80,#0xBF
_OneAndHalf:
	.byte #0x00,#0x00,#0xC0,#0x3F
_NoTrials:
	.dw #0x0014
__str_0:
	.db 0x0A
	.ascii "* * * FLOATING-POINT ERROR %d * * *"
	.db 0x0A
	.db 0x00
	.area _CODE
	.area _CABS
