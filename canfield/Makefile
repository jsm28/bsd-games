# Makefile - makefile for canfield

include ../Makeconfig

ALLDIRS = canfield cfscores

SCOREFILE = $(VARLIBDIR)/cfscores

all:
	@set -e; for i in $(ALLDIRS); do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all SCOREFILE=$(SCOREFILE); \
	    cd ..; \
	done

install:
	@set -e; for i in $(ALLDIRS); do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    make install SCOREFILE=$(SCOREFILE); \
	    cd ..; \
	done

clean:
	@set -e; for i in $(ALLDIRS); do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    make clean SCOREFILE=$(SCOREFILE); \
	    cd ..; \
	done
