SDCC=E:\Julius\Gameboy\GBDK-3\sdcc-2.9

.SUFFIXES: .s .c .o .gb

CC = $(SDCC)/bin/sdcc.bat --stack-auto --vc -mgbz80 -I../include

AS = $(SDCC)/bin/as-gbz80 -lpo
 
OBJS = arand.o cgb.o cpy_data.o delay.o drawing.o f_ibm_sh.o \
    f_italic.o f_min.o f_spect.o get_bk_t.o get_data.o get_prop.o \
    get_spr.o get_wi_t.o get_xy_t.o hiramcpy.o ibmfixed.o \
    init_tt.o input.o mv_bkg.o mv_spr.o mv_win.o pad.o rand.o \
    sample.o scroll_b.o scroll_s.o scroll_w.o serial.o set_bk_t.o \
    set_data.o set_prop.o set_spr.o set_wi_t.o set_xy_t.o sfr.o sgb.o \
	gprint.o gprintf.o gprintn.o gprintln.o digits.o \
    halt.o stop.o crt0.o font.o colours.o

.c.o:
	$(CC) -c -o $@ $<

.s.o:
	$(AS) $@ $<

gbdk.lib : $(OBJS)
	del gbdk.lib
	FOR %%i IN ($(OBJS)) DO echo %%i >> gbdk.lib

clean :
	del *.o *.lst *.map *.gb *~ *.rel *.cdb *.ihx *.lnk *.sym *.asm
