# Makefile - makefile for fortune

include ../Makeconfig

all:
	@set -e; for i in strfile fortune datfiles; do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    $(MAKE) all; \
	    cd ..; \
	done

install:
	@set -e; for i in strfile fortune datfiles; do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    $(MAKE) install $(DEFS_TO_PASS); \
	    cd ..; \
	done

clean:
	@set -e; for i in strfile fortune unstr datfiles; do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    $(MAKE) clean; \
	    cd ..; \
	done
	rm -f fortunes

test:	all
	set -e; cd fortune; $(MAKE) test; cd ..; ln -sf datfiles fortunes
