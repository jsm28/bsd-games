# Makefile - makefile for snake

include ../Makeconfig

all:
	@set -e; for i in snake snscore; do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    $(MAKE) all; \
	    cd ..; \
	done

install:
	@set -e; for i in snake snscore; do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    $(MAKE) install $(DEFS_TO_PASS); \
	    cd ..; \
	done

clean:
	@set -e; for i in snake snscore; do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    $(MAKE) clean; \
	    cd ..; \
	done
