
.PHONY : all

all : how-to-program.pdf

how-to-program.pdf : how-to-program.md
	pandoc\
	   --number-sections\
	   --chapters\
	   -o how-to-program.pdf how-to-program.md

