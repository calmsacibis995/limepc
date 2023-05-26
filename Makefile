
CC = clang
CFLAGS = -O3 -flto -Wno-deprecated-declarations

all: shoebill

shoebill: make_gui debugger

make_gui: make_core
	xcodebuild -project gui/Shoebill.xcodeproj SYMROOT=build

debugger: make_core
	$(MAKE) -C debugger

make_core:
	$(MAKE) -C core -j 4

clean:
	rm -rf intermediates gui/build
