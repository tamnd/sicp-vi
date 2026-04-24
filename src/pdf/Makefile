# Contributed by holomorph, 2013.
# Added to by Andres Raba, 2013-2015.
# Adapted for inkscape 1.x and sicp-vi layout.

FIG := $(patsubst %.svg,%.pdf,$(wildcard fig/*/*.svg))
DIR := $(shell pwd)

all: sicp.pdf

sicp.pdf: sicp.tex exercises.tex figures.tex coverpage.pdf ${FIG}
	latexmk -pdflatex="xelatex %O %S" -pdf -dvi- -ps- $<

sicp.tex: sicp.texi preamble.tex postamble.tex texi-to-latex.pl
	./texi-to-latex.pl $<

exercises.tex figures.tex: ex-fig-ref.pl
	./ex-fig-ref.pl -e > exercises.tex; \
	./ex-fig-ref.pl -f > figures.tex

%.pdf: %.svg
	inkscape --export-area-page --export-filename=${DIR}/$@ ${DIR}/$<

clean:
	latexmk -CA
	rm -f exercises.tex figures.tex coverpage.pdf ${FIG}

clean-all: clean
	${RM} sicp.pdf sicp.tex

.PHONY: all clean clean-all
