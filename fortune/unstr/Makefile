# Makefile - makefile for fortune/unstr

include ../../Makeconfig

unstr:	unstr.c ../strfile/strfile.h
	$(CC) $(LDFLAGS) $(CFLAGS) $(BSD_DEFS) -I../strfile $(BSD_INCS) \
	    -o unstr unstr.c $(BSD_LIB)

install:	all
	$(INSTALL_BINARY) unstr $(INSTALL_PREFIX)$(USRBINDIR)

clean:
	rm -f *.o a.out core unstr
