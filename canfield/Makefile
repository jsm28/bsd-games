# Makefile - makefile for canfield

all:
	@set -e; for i in canfield cfscores; do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all; \
	    cd ..; \
	done

install:
	@set -e; for i in canfield cfscores; do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    make install; \
	    cd ..; \
	done

clean:
	@set -e; for i in canfield cfscores; do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    make clean; \
	    cd ..; \
	done
