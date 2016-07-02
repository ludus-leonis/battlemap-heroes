PDF_NAME="BattlemapHeroes"
TEX_NAME="battles"
VERSION_DE = $(shell grep Version}{ misc.de.tex | sed -e "s/.*{//;s/}.*//")

default: de
	evince out/${PDF_NAME}-de-${VERSION_DE}.pdf

all: de

setup:
	mkdir -p out/images
	ln -sf ../ocgx.sty out/
	ln -sf ../battles.sty out/
	ln -sf ../../images out/images/bmh
	touch out/${PDF_NAME}-de-${VERSION_DE}.idx
	cd out; makeindex -s ../makeindex.sty -g ${PDF_NAME}-de-${VERSION_DE}.idx

de: setup
	ln -sf ../basic.de.tex out/basic.tex
	ln -sf ../expert.de.tex out/expert.tex
	ln -sf ../heroes.de.tex out/heroes.tex
	ln -sf ../misc.de.tex out/misc.tex
	ln -sf ../bestiary.de.tex out/bestiary.tex
	ln -sf ../changelog.de.tex out/changelog.tex
	ln -sf ../mission-01.de.tex out/mission-01.tex
	ln -sf ../mission-02.de.tex out/mission-02.tex
	xelatex \
		-output-driver="xdvipdfmx -V 5 -z 9" \
		-jobname=${PDF_NAME}-de-${VERSION_DE} \
		-output-directory out ${TEX_NAME}

clean:
	rm -rf out/*
