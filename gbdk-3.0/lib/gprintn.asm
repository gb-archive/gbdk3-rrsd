;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Apr  7 2010) (MINGW32)
; This file was generated Sun Dec 17 10:44:43 2017
;--------------------------------------------------------
	.module gprintn
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gprintn
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
;gprintn.c:7: void gprintn(BYTE number, BYTE radix, BYTE signed_value)
;	---------------------------------
; Function gprintn
; ---------------------------------
_gprintn:
	
	dec	sp
;gprintn.c:11: if(number < 0 && signed_value) {
	lda	hl,3(sp)
	ld	a,(hl)
	bit	7,a
	jp	Z,00102$
	xor	a,a
	inc	hl
	inc	hl
	or	a,(hl)
	jp	Z,00102$
;gprintn.c:12: wrtchr('-');
	ld	a,#0x2D
	push	af
	inc	sp
	call	_wrtchr
	lda	sp,1(sp)
;gprintn.c:13: number = -number;
	xor	a,a
	lda	hl,3(sp)
	ld	a,#0x00
	sbc	a,(hl)
	ld	(hl),a
00102$:
;gprintn.c:15: if((i = (UBYTE)number / (UBYTE)radix) != 0)
	lda	hl,3(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	bc
	push	bc
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	__divuchar_rrx_s
	lda	sp,2(sp)
	lda	hl,2(sp)
	ld	(hl),e
	pop	bc
	lda	hl,0(sp)
	ld	c,(hl)
	xor	a,a
	or	a,(hl)
	jp	Z,00105$
;gprintn.c:16: gprintn(i, radix, UNSIGNED);
	push	bc
	ld	a,#0x00
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	_gprintn
	lda	sp,3(sp)
	pop	bc
00105$:
;gprintn.c:17: wrtchr(digits[(UBYTE)number % (UBYTE)radix]);
	lda	hl,3(sp)
	ld	c,(hl)
	push	bc
	inc	sp
	ld	a,c
	push	af
	inc	sp
	call	__moduchar_rrx_s
	lda	sp,2(sp)
	ld	c,e
	ld	hl,#_digits
	ld	a,(hl)
	add	a,c
	ld	hl,#_digits + 1
	ld	c,a
	ld	hl,#_digits + 1
	ld	a,(hl)
	adc	a,#0x00
	ld	b,a
	ld	a,(bc)
	ld	c,a
	push	af
	inc	sp
	call	_wrtchr
	lda	sp,1(sp)
00106$:
	lda	sp,1(sp)
ret
	.area _CODE
	.area _CABS
