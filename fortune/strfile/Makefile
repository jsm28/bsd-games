
DESTDIR=/usr/bin
MAN8DIR=/usr/man/man8

all: strfile

strfile: strfile.c strfile.h
	gcc -O2 -o strfile strfile.c -I/usr/include/bsd -lbsd

install: all
	install -c -g bin -m 555 -o root strfile ${DESTDIR}
	install -c -g bin -m 444 -o root strfile.8 ${MAN8DIR}

clean:
	rm -f *.o a.out core strfile
