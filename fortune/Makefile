ALLDIRS=strfile fortune datfiles 
ALLINST=fortune datfiles

all:
	cd strfile && make
	cd fortune && make
	cd datfiles && make

install:
#	strfile does not get installed by default, just made
	cd strfile && make
	cd fortune && make install
	cd datfiles && make install

clean:
	cd strfile && make clean
	cd fortune && make clean
	cd unstr && make clean
	cd datfiles && make clean

test:	all
	cd strfile && make
	cd fortune && make test
	cd datfiles && make 
	ln -sf datfiles fortunes



