LATEX=pdflatex
BIBTEX=bibtex

all: paper

paper: paper.tex refs.bib
	$(LATEX) paper.tex
	$(BIBTEX) paper.aux
	$(LATEX) paper.tex
	$(LATEX) paper.tex

clean:
	rm paper.aux paper.bbl paper.blg paper.log paper.pdf
