# Makefile - makefile for boggle/boggle

include ../../Makeconfig

PROG   = boggle

OBJS   = bog.o help.o mach.o prtable.o timer.o word.o
#
# Defining PURE causes this program to be compiled with the default BSD 
# behavior.  Not defining it will allow any Linux "improvements" to be
# included.
#
DEFS = $(BSD_SIGNAL_DEFS) -DDICT=\"$(BOGGLE_DIR)/dictionary\" \
	-DDICTINDEX=\"$(BOGGLE_DIR)/dictindex\" \
	-DHELPFILE=\"$(BOGGLE_DIR)/helpfile\" # -DPURE
LIBS   = $(NCURSES_LIB)
INCS   = $(NCURSES_INCS)

all:	$(PROG)

$(PROG):	$(OBJS)
	$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -o $(PROG)

.c.o:	
	$(CC) $(CFLAGS) $(DEFS) $(INCS) -c $< -o $@

$(OBJS):	bog.h

install:	all
	$(INSTALL_BINARY) $(PROG) $(INSTALL_PREFIX)$(GAMESDIR)
	$(HIDE_GAME) $(PROG)
	test -d $(INSTALL_PREFIX)$(BOGGLE_DIR) || \
	    install -d $(INSTALL_PREFIX)$(BOGGLE_DIR)
	$(INSTALL_DATA) ../dictionary ../dictindex helpfile \
	    $(INSTALL_PREFIX)$(BOGGLE_DIR)
	$(INSTALL_MANUAL) $(PROG).6

clean:	
	rm -f *.o core $(PROG)
