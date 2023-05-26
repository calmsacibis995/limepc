#
# Makefile for LimePC/SDL
#

CLEAN_SRCS = floppy.post.c adb.post.c fpu.post.c shoebill core_api.post.c inst_decoder_guts.c shoebill.dSYM cpu.post.c via.post.c decoder_gen mc68851.post.c dis.post.c mem.post.c dis_decoder_guts.c gitrev.h

macos: darwin

darwin:
	./osx-build.sh

linux:
	./lin-build.sh

windows:
	./win_build.bat

clean:
	rm -rf $(CLEAN_SRCS)
