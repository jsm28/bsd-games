# Makefile - makefile for snake

include ../Makeconfig

SCOREFILE    = $(VARLIBDIR)/snake.log
RAWSCOREFILE = $(VARLIBDIR)/snakerawscores

all:
	@set -e; for i in snake snscore; do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all SCOREFILE=$(SCOREFILE) RAWSCOREFILE=$(RAWSCOREFILE); \
	    cd ..; \
	done

install:
	@set -e; for i in snake snscore; do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    make install SCOREFILE=$(SCOREFILE) RAWSCOREFILE=$(RAWSCOREFILE); \
	    cd ..; \
	done

clean:
	@set -e; for i in snake snscore; do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    make clean SCOREFILE=$(SCOREFILE) RAWSCOREFILE=$(RAWSCOREFILE); \
	    cd ..; \
	done
