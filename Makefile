.PHONY: all

CC = xelatex
CV_DIR = ./cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
OUT_DIR = ./out

all: $(foreach x, coverletter cv, $x.pdf)

cv.pdf: cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(OUT_DIR) $<

coverletter.pdf: coverletter.tex
	$(CC) -output-directory=$(OUT_DIR) $<

clean:
	rm -f $(OUT_DIR)/*
