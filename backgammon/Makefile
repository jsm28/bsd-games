# Makefile - makefile for backgammon

include ../Makeconfig

RULES = \"$(SHAREDIR)/backrules\"

all:	backgammon/backgammon teachgammon/teachgammon

backgammon/backgammon:
	@set -e; for i in common_source backgammon; do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all RULES=$(RULES); \
	    cd ..; \
	done

teachgammon/teachgammon:
	@set -e; for i in common_source teachgammon; do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all RULES=$(RULES); \
	    cd ..; \
	done

install:
	@set -e; for i in backgammon teachgammon; do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    make install RULES=$(RULES); \
	    cd ..; \
	done

clean:	
	@set -e; for i in backgammon teachgammon common_source; do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    make clean; \
	    cd ..; \
	done
