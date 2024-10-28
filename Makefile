.POSIX:

include config.mk

SRC = ${SRCDIR}/*.c
OBJ = ${SRC:.c=.o}

all: dirs options ${MAIN}

dirs:
	mkdir -p bin
	mkdir -p obj

options:
	@echo st build options:
	@echo "CFLAGS  = ${CFLAGS}"
	@echo "LDFLAGS = ${LDFLAGS}"
	@echo "CC      = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} ${SRC}
	mv -f ./*.o ${OBJDIR}

st.o: config.h st.h win.h
x.o: arg.h config.h st.h win.h

${MAIN}: ${OBJ}
	$(CC) -o ${BIN}/$@ ${OBJDIR}/*.o $(LDFLAGS)

clean:
	rm -f ${BIN}/${MAIN} ${OBJDIR}/*.o

install: all
	mkdir -p ${DESTDIR}${INSTALLDIR}
	install -m 0755 ${BIN}/${MAIN} ${DESTDIR}/${INSTALLDIR}/${MAIN}
	mkdir -p ${DESTDIR}${MANDIR}
	install -m 0644 st.1 ${DESTDIR}/${MANDIR}/st.1
	tic -sx ${SRCDIR}/st.info
	rm -f ${BIN}/${MAIN} ${OBJDIR}/*.o
	@echo Please see the README file regarding the terminfo entry of st.

uninstall:
	rm -f ${DESTDIR}${INSTALLDIR}/${MAIN}
	rm -f ${DESTDIR}${MANDIR}/st.1

.PHONY: all options clean install uninstall
