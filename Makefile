.PHONY: all
all:
	latexmk -xelatex cv.tex
	latexmk -xelatex resume.tex

.PHONY: clean
clean:
	latexmk -c cv.tex
	latexmk -c resume.tex
