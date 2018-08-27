# This version of the Makefile assumes that pandoc and (enough of) TeX are
# available.

.PHONY: default
default: html pdf

# We don't try to provide an HTML version of the slides in this version
# - use the PDF produces by 'slides' instead.
# For various reasons, pandoc won't render markup-history-extended-notes.rst
# as PDF, so we don't bother.
.PHONY: html
html:
	rst2html.py README.rst README.html
	rst2html.py notes-per-slide.rst notes-per-slide.html
	rst2html.py markup-history-extended-notes.rst markup-history-extended-notes.html

# The available aspect ratio of slides (for beamer only) are 1610 for 16:10,
# 169 for 16:9, 149 for 14:9, 141 for 1.41:1, 54 for 5:4, 43 for 4:3 which is
# the default, and 32 # for 3:2. It's probably enough to go for the following
# pair of resolutions.
# We also make the notes-per-slide as PDF, because we can and it might be useful.
.PHONY: pdf
pdf:
	pandoc markup-history.rst -t beamer -o markup-history-4x3.pdf -V aspectratio:43
	pandoc markup-history-wide.rst -t beamer -o markup-history-16x9.pdf -V aspectratio:169
	pandoc notes-per-slide.rst -o notes-per-slide.pdf -V papersize:a4

.PHONY: clean
clean:
	rm -f *.html

.PHONY: help
help:
	@echo 'make         same as: make html slides'
	@echo 'make pdf     create markup-history-[4x3|16x9].pdf and notes-per-slide.pdf'
	@echo 'make html    create HTML files using rst2html'
	@echo 'make clean   delete HTML files'
