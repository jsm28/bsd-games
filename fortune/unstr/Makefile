# Makefile - makefile for fortune/unstr

include ../../Makeconfig

unstr:	unstr.c ../strfile/strfile.h
	$(CC) $(LDFLAGS) $(CFLAGS) -I../../include -I../strfile \
	    -o unstr unstr.c

install:	all
	$(INSTALL_BINARY) unstr $(INSTALL_PREFIX)$(USRBINDIR)

clean:
	rm -f *.o a.out core unstr
