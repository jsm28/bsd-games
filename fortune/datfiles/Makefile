# Makefile - makefile for fortune/datfiles

include ../../Makeconfig

DATFILES = fortunes.dat fortunes2.dat startrek.dat zippy.dat \
	fortunes-o fortunes-o.dat fortunes2-o fortunes2-o.dat \
	limerick limerick.dat
SRCFILES = fortunes fortunes2 startrek zippy

all:	$(DATFILES)

install:	$(DATFILES)
	test -d $(INSTALL_PREFIX)$(LIBDIR)/fortunes || \
	    install -d $(INSTALL_PREFIX)$(LIBDIR)/fortunes
	$(INSTALL_DATA) $(DATFILES) $(SRCFILES) \
	    $(INSTALL_PREFIX)$(LIBDIR)/fortunes

fortunes.dat:	fortunes
	../strfile/strfile -rs fortunes fortunes.dat

fortunes2.dat:	fortunes2
	../strfile/strfile -rs fortunes2 fortunes2.dat

startrek.dat:	startrek
	../strfile/strfile -rs startrek startrek.dat

zippy.dat:	zippy
	../strfile/strfile -rs zippy zippy.dat

fortunes-o:	fortunes-o.$(FORTUNE_TYPE)
	tr a-zA-Z n-za-mN-ZA-M <fortunes-o.$(FORTUNE_TYPE) >fortunes-o

fortunes-o.dat:	fortunes-o
	../strfile/strfile -rsx fortunes-o fortunes-o.dat

fortunes2-o:	fortunes2-o.$(FORTUNE_TYPE)
	tr a-zA-Z n-za-mN-ZA-M <fortunes2-o.$(FORTUNE_TYPE) >fortunes2-o

fortunes2-o.dat:	fortunes2-o
	../strfile/strfile -rsx fortunes2-o fortunes2-o.dat

limerick:	limerick.$(FORTUNE_TYPE)
	tr a-zA-Z n-za-mN-ZA-M <limerick.$(FORTUNE_TYPE) >limerick

limerick.dat:	limerick
	../strfile/strfile -rsx limerick limerick.dat

clean:
	rm -f $(DATFILES)
