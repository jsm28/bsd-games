
DESTDIR=/usr/bin

unstr: unstr.c ../strfile/strfile.h
	gcc -O2 -o unstr unstr.c -I../strfile -I/usr/include/bsd -lbsd

install: all
	install -g bin -o root -m 555 unstr ${DESTDIR}

clean:
	rm -f *.o a.out core unstr
