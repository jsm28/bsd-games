# Makefile - makefile for fortune

# Config information not needed!

all:
	@set -e; for i in strfile fortune datfiles; do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all; \
	    cd ..; \
	done

install:
	@set -e; for i in strfile fortune datfiles; do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    make install; \
	    cd ..; \
	done

clean:
	@set -e; for i in strfile fortune unstr datfiles; do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    make clean; \
	    cd ..; \
	done
	rm -f fortunes

test:	all
	set -e; cd fortune; make test; cd ..; ln -sf datfiles fortunes
