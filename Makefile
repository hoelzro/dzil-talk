all: dzil-talk.pdf

%.pdf: %.dvi
	dvipdf $< $@

%.dvi: %.tex
	latex $<

clean:
	rm -f dzil-talk.aux dzil-talk.log dzil-talk.ps dzil-talk.pdf texput.log dzil-talk.out dzil-talk.dvi dzil-talk.nav dzil-talk.snm dzil-talk.toc
