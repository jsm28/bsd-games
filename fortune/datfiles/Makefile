# Makefile - makefile for fortune/datfiles

include ../../Makeconfig

DATFILES = fortunes.dat startrek.dat zippy.dat fortunes-o.dat
SRCFILES = fortunes startrek zippy fortunes-o

all:	$(DATFILES)

install:	$(DATFILES)
	test -d $(INSTALL_PREFIX)$(LIBDIR)/fortunes || \
	    install -d $(INSTALL_PREFIX)$(LIBDIR)/fortunes
	$(INSTALL_DATA) $(DATFILES) $(SRCFILES) \
	    $(INSTALL_PREFIX)$(LIBDIR)/fortunes

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
