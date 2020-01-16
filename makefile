TEX=xelatex
SRC=$(wildcard *.tex)
PDF=$(patsubst %.tex,%.pdf,$(SRC))

default: $(PDF)

%.pdf: %.tex
	$(TEX) $<
	$(TEX) $<

clean:
	rm -f $(PDF)