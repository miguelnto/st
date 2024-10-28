# Customize according to your system

# Executable file
MAIN = st

# Output directory for the executable file
BIN = bin

# Output directory for *.o files
OBJDIR = obj

# Source
SRCDIR = src

# Install directory
INSTALLDIR = /usr/local/bin

# Man page directory
MANDIR = /usr/local/share/man/man1

# X11
X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# Freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/include/freetype2

# includes and libs
INCS = -I${X11INC} -I${FREETYPEINC}
LDFLAGS = -L${X11LIB} -lm -lrt -lX11 -lutil -lXrender ${FREETYPELIBS}

# Flags
COPTIONS = -pedantic -Wall -Wextra -Wunused -Wunused-function -Wunused-local-typedefs -Wunused-macros -Os
CPPFLAGS = -D_XOPEN_SOURCE=600
CFLAGS = -std=c99 ${COPTIONS} ${INCS} ${CPPFLAGS}

# Compiler and linker
CC = cc
