# Makefile - makefile for bsd-games

include Makeconfig

# Directories we can do `make test' in
TESTDIRS=bcd caesar factor morse primes number pom ppt wargames

all:
	@set -e; for i in $(BUILDDIRS); do \
	    echo "Making all in $$i"; \
	    cd $$i; \
	    make all; \
	    cd $(SRCDIR); \
	done

install:
	@echo "If directory creation fails, you can create the directories \
	      by hand."
	@echo "Creating base directories:"
	@set -e; for i in $(GAMESDIR) $(SBINDIR) $(SOCKETDIR) $(USRBINDIR) \
	    $(MAN6DIR) $(MAN8DIR) $(LIBDIR) $(SHAREDIR) $(VARLIBDIR); do
	    echo " $(INSTALL_PREFIX)$$i"; \
	    test -d $(INSTALL_PREFIX)$$i || \
	    install -d $(INSTALL_PREFIX)$$i; \
	done
	@echo ""
	@set -e; for i in $(BUILDDIRS); do \
	    echo "Making install in $$i"; \
	    cd $$i; \
	    make install; \
	    cd $(SRCDIR); \
	done

clean:
	@set -e; for i in $(BUILDDIRS); do \
	    echo "Making clean in $$i"; \
	    cd $$i; \
	    make clean; \
	    cd $(SRCDIR); \
	done

distclean:	clean
	rm -f Makeconfig hide-game subst.sed

test:
	@set -e; for i in $(TESTDIRS); do \
	    echo "Making test in $$i"; \
	    cd $$i; \
	    make test; \
	    cd $(SRCDIR); \
	done
