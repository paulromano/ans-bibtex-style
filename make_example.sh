#!/bin/sh

pdflatex -halt-on-error example
bibtex -terse example
pdflatex -halt-on-error example
pdflatex -halt-on-error example
