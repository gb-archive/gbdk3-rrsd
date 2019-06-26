;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Apr  7 2010) (MINGW32)
; This file was generated Wed Dec 20 16:20:15 2017
;--------------------------------------------------------
	.module gbparanoia
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
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
;gbparanoia.c:8: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main:
	
;gbparanoia.c:9: printf("Hello World\n");
	ld	hl,#__str_0
	push	hl
	call	_printf
	lda	sp,2(sp)
;gbparanoia.c:20: Pause();part1();
	call	banked_call
	.dw	_Pause
	.dw	b_Pause
	call	banked_call
	.dw	_part1
	.dw	b_part1
;gbparanoia.c:21: Pause();part2();
	call	banked_call
	.dw	_Pause
	.dw	b_Pause
	call	banked_call
	.dw	_part2
	.dw	b_part2
;gbparanoia.c:22: Pause();part3();
	call	banked_call
	.dw	_Pause
	.dw	b_Pause
	call	banked_call
	.dw	_part3
	.dw	b_part3
;gbparanoia.c:23: Pause();part4();
	call	banked_call
	.dw	_Pause
	.dw	b_Pause
	call	banked_call
	.dw	_part4
	.dw	b_part4
;gbparanoia.c:24: Pause();part5();
	call	banked_call
	.dw	_Pause
	.dw	b_Pause
	call	banked_call
	.dw	_part5
	.dw	b_part5
;gbparanoia.c:25: Pause();part6();
	call	banked_call
	.dw	_Pause
	.dw	b_Pause
	call	banked_call
	.dw	_part6
	.dw	b_part6
;gbparanoia.c:26: Pause();part7();
	call	banked_call
	.dw	_Pause
	.dw	b_Pause
	call	banked_call
	.dw	_part7
	.dw	b_part7
;gbparanoia.c:27: Pause();part8();
	call	banked_call
	.dw	_Pause
	.dw	b_Pause
	call	banked_call
	.dw	_part8
	.dw	b_part8
;gbparanoia.c:28: printf("Bye World\n");
	ld	hl,#__str_1
	push	hl
	call	_printf
	lda	sp,2(sp)
;gbparanoia.c:29: halt();
	call	_halt
00101$:
	
ret
__str_0:
	.ascii "Hello World"
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "Bye World"
	.db 0x0A
	.db 0x00
	.area _CODE
	.area _CABS
