PROGS=	hello fizzbuzz

all: ${PROGS}

clean:
	rm -f ${PROGS}

.PHONY: all clean
