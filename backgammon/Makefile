# Makefile - makefile for backgammon

include ../Makeconfig

all:	backgammon/backgammon teachgammon/teachgammon

backgammon/backgammon:
	@set -e; for i in common_source backgammon; do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all; \
	    cd ..; \
	done

teachgammon/teachgammon:
	@set -e; for i in common_source teachgammon; do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all; \
	    cd ..; \
	done

install:
	@set -e; for i in backgammon teachgammon; do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    make install; \
	    cd ..; \
	done

clean:	
	@set -e; for i in backgammon teachgammon common_source; do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    make clean; \
	    cd ..; \
	done
