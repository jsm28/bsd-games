#

# DESTDIR should match the directory named in ../fortune/pathnames.h
DESTDIR=/usr/games

DATFILES=fortunes.dat startrek.dat zippy.dat fortunes-o.dat
SRCFILES=fortunes startrek zippy fortunes-o

all: ${DATFILES}

install: ${DATFILES}
	install -g bin -m 555 -o root -d ${DESTDIR}/fortunes
	install -g bin -m 444 -o root ${DATFILES} ${SRCFILES} \
		${DESTDIR}/fortunes
	chmod ugo+x ${DESTDIR}/fortunes

fortunes-o.dat: fortunes-o
	../strfile/strfile -rsx fortunes-o fortunes-o.dat

fortunes.dat: fortunes
	../strfile/strfile -rs fortunes fortunes.dat

startrek.dat: startrek
	../strfile/strfile -rs startrek startrek.dat

zippy.dat: zippy
	../strfile/strfile -rs zippy zippy.dat

clean:
	rm -f *.dat



