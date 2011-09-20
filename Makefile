TEX_FILES=$(shell ls *.tex)

all: dzil-talk.pdf

dzil-talk.pdf: dzil-talk.dvi
	dvipdf $< $@

dzil-talk.dvi: $(TEX_FILES) talk-utils.sty
	latex -shell-escape dzil-talk.tex

clean:
	rm -f *.aux *.log dzil-talk.ps dzil-talk.pdf *.out *.dvi *.nav *.snm *.toc *.vrb
