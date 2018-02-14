# Run hovercraft to output on http://localhost:8000

.PHONY: default
default: html slides

.PHONY: slides
slides:
	hovercraft markup-history.rst slides

.PHONY: show
show:
	echo 'Go to http://localhost:8000 to see the slides'
	hovercraft markup-history.rst

.PHONY: html
html:
	rst2html.py README.rst README.html
	rst2html.py markup-history.rst markup-history.html
	rst2html.py notes-per-slide.rst notes-per-slide.html
	rst2html.py markup-history-extended-notes.rst markup-history-extended-notes.html

# -V aspectratio:XXX
# aspect ratio of slides (for beamer only, 1610 for 16:10, 169 for 16:9, 149
# for 14:9, 141 for 1.41:1, 54 for 5:4, 43 for 4:3 which is the default, and 32
# for 3:2).
.PHONY: pandoc
pandoc:
	pandoc markup-history.rst -t beamer -o markup-history-4x3.pdf -V aspectratio:43
	pandoc markup-history.rst -t beamer -o markup-history-16x9.pdf -V aspectratio:169

.PHONY: clean
clean:
	rm -f README.html
	rm -f markup-history.html
	rm -f notes-per-slide.html
	rm -f markup-history-extended-notes.html
	rm -f markup-history*.pdf
	rm -rf slides
	rm *~

.PHONY: help
help:
	@echo 'make         same as: make html slides'
	@echo 'make slides  create slideshow in slides/'
	@echo 'make show    show slideshow on http://localhost:8000'
	@echo 'make html    create HTML files using rst2html'
	@echo 'make clean   delete HTML files and slides/'
	@echo 'make pandoc  make PDF slides using pandoc and LaTeX'
