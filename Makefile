UNAME := $(shell uname -s)

ifeq ($(UNAME),Darwin)
    MAKEFILE=Makefile.osx
else
    MAKEFILE=Makefile
endif

all:
	cd src && make -j 4 -f$(MAKEFILE)
	cp src/silkjs .

bootstrap:
	cd src && make -j 4 -f$(MAKEFILE) bootstrap
	cp src/bootstrap-silkjs .

debug:
	cd src && make -j 4 -f$(MAKEFILE) debug
	cp src/silkjs .

clean:
	cd src && make -f$(MAKEFILE) clean

realclean:
	cd src && make -f$(MAKEFILE) realclean

