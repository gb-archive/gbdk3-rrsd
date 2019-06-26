;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Apr  7 2010) (MINGW32)
; This file was generated Sun Dec 17 10:44:43 2017
;--------------------------------------------------------
	.module gprintln
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gprintln
;--------------------------------------------------------
;  ram data
;--------------------------------------------------------
	.area _DATA
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;gprintln.c:7: void gprintln(INT16 number, INT8 radix, INT8 signed_value)
;	---------------------------------
; Function gprintln
; ---------------------------------
_gprintln:
	
	push	af
	push	af
;gprintln.c:11: if(number < 0 && signed_value) {
	lda	hl,7(sp)
	ld	a,(hl)
	bit	7,a
	jp	Z,00102$
	xor	a,a
	inc	hl
	inc	hl
	or	a,(hl)
	jp	Z,00102$
;gprintln.c:12: wrtchr('-');
	ld	a,#0x2D
	push	af
	inc	sp
	call	_wrtchr
	lda	sp,1(sp)
;gprintln.c:13: number = -number;
	xor	a,a
	lda	hl,6(sp)
	ld	a,#0x00
	sbc	a,(hl)
	ld	(hl+),a
	ld	a,#0x00
	sbc	a,(hl)
	ld	(hl),a
00102$:
;gprintln.c:15: if((l = (UINT16)number / (UINT16)radix) != 0)
	lda	hl,6(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	a,(hl)
	lda	hl,0(sp)
	ld	(hl),a
	lda	hl,8(sp)
	ld	a,(hl)
	rla	
	sbc	a,a
	lda	hl,1(sp)
	ld	(hl-),a
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	call	__divuint_rrx_s
	lda	sp,4(sp)
	lda	hl,3(sp)
	ld	(hl),d
	dec	hl
	ld	(hl),e
	lda	hl,2(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	dec	hl
	ld	a,(hl+)
	or	a,(hl)
	jp	Z,00105$
;gprintln.c:16: gprintln(l, radix, UNSIGNED);
	ld	a,#0x00
	push	af
	inc	sp
	lda	hl,9(sp)
	ld	a,(hl)
	push	af
	inc	sp
	push	bc
	call	_gprintln
	lda	sp,4(sp)
00105$:
;gprintln.c:17: wrtchr(digits[(UINT16)number % (UINT16)radix]);
	lda	hl,6(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	lda	hl,0(sp)
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	call	__moduint_rrx_s
	lda	sp,4(sp)
	ld	b,d
	ld	c,e
	ld	hl,#_digits
	ld	a,(hl)
	add	a,c
	ld	hl,#_digits + 1
	ld	c,a
	ld	hl,#_digits + 1
	ld	a,(hl)
	adc	a,b
	ld	b,a
	ld	a,(bc)
	ld	c,a
	push	af
	inc	sp
	call	_wrtchr
	lda	sp,1(sp)
00106$:
	lda	sp,4(sp)
ret
	.area _CODE
	.area _CABS
