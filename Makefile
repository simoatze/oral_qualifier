DEPS = *.tex *.bib

all: root.pdf

root.pdf: root.tex $(DEPS)
	pdflatex root.tex	
	bibtex root
	pdflatex root.tex
	pdflatex root.tex

clean:
	rm -f root.pdf *.ps *.dvi *~ \#*\#
	rm -rf *.aux *.bbl *.blg *.dvi *.log *.rel *.toc *.out *.synctex.gz auto
