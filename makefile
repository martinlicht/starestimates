
all: main.pdf

main.pdf: main.tex library.bib header.tex 
	pdflatex -interaction=nonstopmode -halt-on-error main.tex
	bibtex main
	pdflatex -interaction=nonstopmode -halt-on-error main.tex
	pdflatex -interaction=nonstopmode -halt-on-error main.tex

# Rule to view the PDF using the default PDF viewer
view: main.pdf
	open main.pdf

# Rule to clean auxiliary files created by LaTeX
clean:
	rm -f main.aux main.log main.out main.bbl main.blg main.toc main.pdf

# Phony targets 
.PHONY: all view clean 
