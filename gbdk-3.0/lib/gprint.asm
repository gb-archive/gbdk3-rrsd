;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Apr  7 2010) (MINGW32)
; This file was generated Tue Dec 19 16:52:05 2017
;--------------------------------------------------------
	.module gprint
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gprint
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
;gprint.c:3: void gprint(char *str) // NONBANKED
;	---------------------------------
; Function gprint
; ---------------------------------
_gprint:
	
	push	af
;gprint.c:5: while(*str)
	lda	hl,4(sp)
	ld	a,(hl+)
	ld	e,(hl)
	lda	hl,0(sp)
	ld	(hl+),a
	ld	(hl),e
00101$:
	lda	hl,0(sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	or	a,a
	jp	Z,00104$
;gprint.c:6: wrtchr(*str++);
	dec	hl
	inc	(hl)
	jr	NZ,00109$
	inc	hl
	inc	(hl)
00109$:
	ld	a,c
	push	af
	inc	sp
	call	_wrtchr
	lda	sp,1(sp)
	jp	00101$
00104$:
	lda	sp,2(sp)
ret
	.area _CODE
	.area _CABS
