;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Apr  7 2010) (MINGW32)
; This file was generated Tue Dec 19 17:02:53 2017
;--------------------------------------------------------
	.module gprintf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gprintf
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
;gprintf.c:4: INT8 gprintf(char *fmt, ...) // NONBANKED
;	---------------------------------
; Function gprintf
; ---------------------------------
_gprintf:
	lda	sp,-5(sp)
;gprintf.c:7: INT8 nb = 0;
	lda	hl,1(sp)
	ld	(hl),#0x00
;gprintf.c:9: va_start(ap, fmt);
	lda	hl,7(sp)
	ld	c,l
	ld	b,h
	ld	hl,#0x0002
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,3(sp)
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	dec	hl
	ld	(hl),#0x00
00113$:
;gprintf.c:10: for(; *fmt; fmt++)
	lda	hl,7(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(bc)
	lda	hl,0(sp)
	ld	(hl),a
	or	a,a
	jp	Z,00116$
;gprintf.c:11: if(*fmt == '%') {
	ld	a,(hl)
	sub	a,#0x25
	jp	NZ,00129$
	jr	00130$
00129$:
	jp	00111$
00130$:
;gprintf.c:12: switch(*++fmt) {
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,7(sp)
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(bc)
	ld	c,a
	sub	a,#0x25
	jp	Z,00107$
00131$:
	ld	a,c
	sub	a,#0x63
	jp	Z,00101$
00132$:
	ld	a,c
	sub	a,#0x64
	jp	Z,00102$
00133$:
	ld	a,c
	sub	a,#0x6F
	jp	Z,00104$
00134$:
	ld	a,c
	sub	a,#0x73
	jp	Z,00106$
00135$:
	ld	a,c
	sub	a,#0x75
	jp	Z,00103$
00136$:
	ld	a,c
	sub	a,#0x78
	jp	Z,00105$
00137$:
	jp	00108$
;gprintf.c:13: case 'c': {
00101$:
;gprintf.c:15: char c = va_arg(ap, char);
	lda	hl,3(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	ld	a,(bc)
	ld	b,a
;gprintf.c:16: wrtchr(c);
	push	bc
	inc	sp
	call	_wrtchr
	lda	sp,1(sp)
;gprintf.c:17: break;
	jp	00109$
;gprintf.c:19: case 'd': {
00102$:
;gprintf.c:21: INT8 b = va_arg(ap, INT8);
	lda	hl,3(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	ld	a,(bc)
	ld	b,a
;gprintf.c:22: gprintn(b, 10, SIGNED);
	ld	hl,#0x010A
	push	hl
	push	bc
	inc	sp
	call	_gprintn
	lda	sp,3(sp)
;gprintf.c:23: break;
	jp	00109$
;gprintf.c:25: case 'u': {
00103$:
;gprintf.c:27: INT8 b = va_arg(ap, INT8);
	lda	hl,3(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	ld	a,(bc)
	ld	b,a
;gprintf.c:28: gprintn(b, 10, UNSIGNED);
	ld	hl,#0x000A
	push	hl
	push	bc
	inc	sp
	call	_gprintn
	lda	sp,3(sp)
;gprintf.c:29: break;
	jp	00109$
;gprintf.c:31: case 'o': {
00104$:
;gprintf.c:33: INT8 b = va_arg(ap, INT8);
	lda	hl,3(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	ld	a,(bc)
	ld	b,a
;gprintf.c:34: gprintn(b, 8, UNSIGNED);
	ld	hl,#0x0008
	push	hl
	push	bc
	inc	sp
	call	_gprintn
	lda	sp,3(sp)
;gprintf.c:35: break;
	jp	00109$
;gprintf.c:37: case 'x': {
00105$:
;gprintf.c:39: INT8 b = va_arg(ap, INT8);
	lda	hl,3(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	ld	a,(bc)
	ld	b,a
;gprintf.c:40: gprintn(b, 16, UNSIGNED);
	ld	hl,#0x0010
	push	hl
	push	bc
	inc	sp
	call	_gprintn
	lda	sp,3(sp)
;gprintf.c:41: break;
	jp	00109$
;gprintf.c:43: case 's': {
00106$:
;gprintf.c:45: char *s = va_arg(ap, char *);
	lda	hl,3(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	dec	bc
	ld	e,c
	ld	d,b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
;gprintf.c:46: gprint(s);
	push	bc
	call	_gprint
	lda	sp,2(sp)
;gprintf.c:47: break;
	jp	00109$
;gprintf.c:72: case '%':
00107$:
;gprintf.c:74: wrtchr(*fmt);
	ld	a,c
	push	af
	inc	sp
	call	_wrtchr
	lda	sp,1(sp)
;gprintf.c:75: break;
	jp	00109$
;gprintf.c:76: default:
00108$:
;gprintf.c:77: return -1;
	ld	e,#0xFF
	jp	00117$
;gprintf.c:78: }
00109$:
;gprintf.c:79: nb++;
	lda	hl,2(sp)
	inc	(hl)
	ld	a,(hl)
	dec	hl
	ld	(hl),a
	jp	00115$
00111$:
;gprintf.c:81: wrtchr(*fmt);
	lda	hl,0(sp)
	ld	a,(hl)
	push	af
	inc	sp
	call	_wrtchr
	lda	sp,1(sp)
00115$:
;gprintf.c:10: for(; *fmt; fmt++)
	lda	hl,7(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	lda	hl,7(sp)
	ld	(hl+),a
	ld	(hl),d
	jp	00113$
00116$:
;gprintf.c:84: return nb;
	lda	hl,1(sp)
	ld	e,(hl)
00117$:
	lda	sp,5(sp)
ret
	.area _CODE
	.area _CABS
