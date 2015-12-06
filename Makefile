
# Lex.pdf makefile

DEP=	

#MAKEFILE RULES
all: perlin_noise.pdf

clean:
	@rm -rf *.aux
	@rm -rf *.blg
	@rm -rf *.ilg
	@rm -rf *.log
	@rm -rf *.ind
	@rm -rf *.toc
	@rm -rf *.out
	@rm -rf flex.bbl
	@rm -rf flex.idx

re: clean all

#RESSOURCES
others: $(DEP)

#PDF
perlin_noise.pdf: perlin_noise.tex others
	pdflatex perlin_noise
	bibtex perlin_noise
	makeindex perlin_noise -s perso.ist
	pdflatex perlin_noise
	pdflatex perlin_noise

