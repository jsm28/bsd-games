# Makefile - makefile for fortune/strfile

include ../../Makeconfig

all:	strfile

strfile:	strfile.c strfile.h
	$(CC) $(LDFLAGS) $(CFLAGS) $(BSD_DEFS) $(BSD_INCS) \
	    -o strfile strfile.c $(BSD_LIB)

install:	all
	$(INSTALL_BINARY) strfile $(INSTALL_PREFIX)$(USRBINDIR)
	$(INSTALL_MANUAL) strfile.8

clean:
	rm -f *.o a.out core strfile
