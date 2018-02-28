.PHONY: all
all:
	latexmk -xelatex cv.tex

.PHONY: clean
clean:
	latexmk -c
