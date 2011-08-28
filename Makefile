TEX_FILES=$(shell ls *.tex)

all: dzil-talk.pdf

dzil-talk.pdf: dzil-talk.dvi
	dvipdf $< $@

dzil-talk.dvi: $(TEX_FILES)
	latex $<

clean:
	rm -f dzil-talk.aux dzil-talk.log dzil-talk.ps dzil-talk.pdf texput.log dzil-talk.out dzil-talk.dvi dzil-talk.nav dzil-talk.snm dzil-talk.toc
