# Makefile - makefile for boggle

# DICTSRC is the dictionary that will be used to construct the word list used
# by bog.
DICTSRC=../hangman/words

all:	dictionary dictindex boggle/boggle

dictionary:	mkdict/mkdict
	mkdict/mkdict <$(DICTSRC) >dictionary

mkdict/mkdict:	mkdict/mkdict.c
	cd mkdict && make mkdict

dictindex:	mkindex/mkindex dictionary
	mkindex/mkindex <dictionary >dictindex

mkindex/mkindex:	mkindex/mkindex.c
	cd mkindex && make mkindex

boggle/boggle:	boggle/bog.c boggle/bog.h boggle/extern.h boggle/help.c boggle/mach.c boggle/prtable.c boggle/timer.c boggle/word.c
	cd boggle && make boggle

install:
	@set -e; for i in boggle; do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    make install; \
	    cd ..; \
	done

clean:
	@set -e; for i in boggle mkdict mkindex; do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    make clean; \
	    cd ..; \
	done
	rm -f dictionary dictindex patch.tmp README.linux.old

# This target is for maintainer use to update the patch at the end
# of README.linux.
linux-patch:	
	sed /=====/q README.linux >README.linux.new
	: >patch.tmp
	@echo "Error 1 (ignored) is just when differences are found."
	@echo "Error 2 means trouble."
	-diff -u ../../other/bog/README README >>patch.tmp
	-diff -u ../../other/bog/bog.man boggle/boggle.6 >>patch.tmp
	-diff -u ../../other/bog/bog.c boggle/bog.c >>patch.tmp
	-diff -u ../../other/bog/bog.h boggle/bog.h.in >>patch.tmp
	-diff -u ../../other/bog/help.c boggle/help.c >>patch.tmp
	-diff -u ../../other/bog/helpfile boggle/helpfile >>patch.tmp
	-diff -u ../../other/bog/mach.c boggle/mach.c >>patch.tmp
	-diff -u ../../other/bog/mkdict.c mkdict/mkdict.c >>patch.tmp
	-diff -u ../../other/bog/mkindex.c mkindex/mkindex.c >>patch.tmp
	-diff -u ../../other/bog/prtable.c boggle/prtable.c >>patch.tmp
	-diff -u ../../other/bog/timer.c boggle/timer.c >>patch.tmp
	-diff -u ../../other/bog/word.c boggle/word.c >>patch.tmp
	gzip -9 <patch.tmp |uuencode bog-patch.gz.uue >>README.linux.new
	rm -f patch.tmp
	mv README.linux README.linux.old
	mv README.linux.new README.linux
