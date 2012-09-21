manuscript = example
latexopt   = -halt-on-error -file-line-error

all: $(manuscript).pdf

$(manuscript).pdf: $(manuscript).tex $(manuscript).bib
	pdflatex $(latexopt) $<
	bibtex $(basename $<).aux
	pdflatex $(latexopt) $<
	pdflatex $(latexopt) $<

clean:
	@rm -f *.aux *.bbl *.blg *.log *.out *.spl $(manuscript).pdf

.PHONY: all clean
