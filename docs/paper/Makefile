LATEX = pdflatex
DVIPDF = dvipdfm
SPELL = aspell
TEX = ee219d
BIBTEX = bibtex
SOURCES = $(wildcard *.tex) $(wildcard *.bib)

default: pdf

pdf: $(SOURCES)
	$(LATEX) $(TEX); $(BIBTEX) $(TEX); $(LATEX) $(TEX); $(LATEX) $(TEX)

view:
	$(LATEX) $(TEX)
	acroread $(TEX).pdf

osx:
	$(LATEX) $(TEX)
	open $(TEX).pdf

check: $(TEXFILES)
	@for f in $(TEXFILES) ; \
	do \
		echo Spelling check in $$f ... ; \
		$(SPELL) check $$f ; \
	done

open: $(PDF)
	open $(TEX).pdf

clean:
	$(RM) -rf *.aux *.blg *.dvi *.log *.toc *.lof *.lot *.cb *.bbl $(TEX).ps $(TEX).pdf *~ *.out auto/ *.synctex.gz
