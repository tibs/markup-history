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
	rst2html.py markup-history.rst markup-history.html
	rst2html.py markup-history-extended-notes.rst markup-history-extended-notes.html

.PHONY: clean
clean:
	rm -f markup-history.html
	rm -f markup-history-extended-notes.html
	rm -rf slides
	rm *~

.PHONY: help
help:
	@echo 'make         same as: make html slides'
	@echo 'make slides  create slideshow in slides/'
	@echo 'make show    show slideshow on http://localhost:8000'
	@echo 'make html    create markup-history.html and markup-history-extended-notes.html using rst2html'
	@echo 'make clean   delete markup-history.html and markup-history-extended-notes.html and slides/'
