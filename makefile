
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




standard:
# MISC
	@ grep -n --color ' can ' main.tex; true
	@ grep -n --color ' will ' main.tex; true

todolist:
	@ grep -n --color 'TODO' main.tex; true
	@ grep -n --color 'FIXME' main.tex; true	


check: 
	@ grep -n -Eo '(\b.+) \1\b' main.tex  || true
	@ grep -n -P ' an [^AEIOUaeiou]' main.tex; true
	@ grep -n -P 'An [^AEIOUaeiou]' main.tex; true
# capitalization
	@ grep -n --color 'theorem \\' main.tex; true
	@ grep -n --color 'theorem~\\' main.tex; true
	@ grep -n --color 'lemma \\' main.tex; true
	@ grep -n --color 'lemma~\\' main.tex; true
	@ grep -n --color 'proposition \\' main.tex; true
	@ grep -n --color 'proposition~\\' main.tex; true
	@ grep -n --color 'equation \\' main.tex; true
	@ grep -n --color 'equation~\\' main.tex; true
	@ grep -n --color 'inequality \\' main.tex; true
	@ grep -n --color 'inequality~\\' main.tex; true
# missing ~
	@ grep -n --color 'Theorem ' main.tex; true
	@ grep -n --color 'Lemma ' main.tex; true
	@ grep -n --color 'Proposition ' main.tex; true
	@ grep -n --color 'Corollary ' main.tex; true
	@ grep -n --color 'Equation ' main.tex; true
	@ grep -n --color 'Inequality ' main.tex; true
# wrong reference type 
	@ grep -n --color 'Theorem~\\eqref' main.tex; true
	@ grep -n --color 'Lemma~\\eqref' main.tex; true
	@ grep -n --color 'Proposition~\\eqref' main.tex; true
	@ grep -n --color 'Corollary~\\eqref' main.tex; true
	@ grep -n --color 'Equation~\\ref' main.tex; true
	@ grep -n --color 'Inequality~\\ref' main.tex; true
# wrong type of statement
	@ grep -n --color 'Theorem~\\ref{lemma' main.tex; true
	@ grep -n --color 'Theorem~\\ref{pro' main.tex; true
	@ grep -n --color 'Theorem~\\ref{c' main.tex; true
	@ grep -n --color 'Lemma~\\ref{theorem' main.tex; true
	@ grep -n --color 'Lemma~\\ref{pro' main.tex; true
	@ grep -n --color 'Lemma~\\ref{c' main.tex; true
	@ grep -n --color 'Proposition~\\ref{lemma' main.tex; true
	@ grep -n --color 'Proposition~\\ref{theorem' main.tex; true
	@ grep -n --color 'Proposition~\\ref{c' main.tex; true
	@ grep -n --color 'Corollary~\\ref{[^c]' main.tex; true


substitutions:
	#for texfile in ./*tex; do echo $$texfile && ../latexdisp.pl $$texfile > temp.tex; mv temp.tex $$texfile; done
	sed -i -e 's \.\$$ \$$\. g' main.tex 
	sed -i -e 's ,\$$ \$$, g' main.tex 
	sed -i -e 's2 \\eqref2~\\eqref2g' main.tex 
	sed -i -e 's2 \\ref2~\\ref2g' main.tex 
	sed -i -e 's2 \\cite2~\\cite2g' main.tex 
	sed -i -e 's/de Rham/de~Rham/g' main.tex 
	sed -i -e 's/\\textit/\\todo/g' main.tex 
	sed -i -e 's/Theorem \\ref/Theorem~\\ref/g' main.tex 
	sed -i -e 's/Lemma \\ref/Lemma~\\ref/g' main.tex 
	sed -i -e 's/Proposition \\ref/Proposition~\\ref/g' main.tex 
	sed -i -e 's/Equation \\eqref/Equation~\\eqref/g' main.tex 
	sed -i -e 's/Inequality \\eqref/Inequality~\\eqref/g' main.tex 
	sed -i -e 's/ \\cite/~\\cite/g' main.tex 



# Phony targets 
.PHONY: all view clean check standard todolist substitutions




