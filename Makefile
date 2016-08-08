PDF_NAME="BattlemapHeroes"
TEX_NAME="bmh"
VERSION_DE = $(shell grep Version}{ content.de/misc.tex | sed -e "s/.*{//;s/}.*//")

default: de
	evince out/${PDF_NAME}-de-${VERSION_DE}.pdf

all: de

setup:
	mkdir -p out/images
	ln -sf ../ocgx.sty out/
	ln -sf ../bmh.sty out/
	ln -sf ../../images out/images/bmh
	touch out/${PDF_NAME}-de-${VERSION_DE}.idx
	cd out; makeindex -s ../makeindex.sty -g ${PDF_NAME}-de-${VERSION_DE}.idx

de: setup
	cd out; ln -sf ../content.de/*.tex .
	xelatex \
		-output-driver="xdvipdfmx -V 5 -z 9" \
		-jobname=${PDF_NAME}-de-${VERSION_DE} \
		-output-directory out ${TEX_NAME}

clean:
	rm -rf out/*
