PDFLATEX=pdflatex

default:
	$(PDFLATEX) prop
	-bibtex prop
	$(PDFLATEX) prop
	$(PDFLATEX) prop

facilities: facilities.tex
	$(PDFLATEX) facilities

supdocslist: supdocslist.tex
	$(PDFLATEX) supdocslist

budget: budgetjustify.tex
	$(PDFLATEX) budgetjustify

data: data.tex
	$(PDFLATEX) data

reu: reu.tex
	$(PDFLATEX) reu
	-bibtex reu
	$(PDFLATEX) reu
	$(PDFLATEX) reu

ttp: ttp.tex
	$(PDFLATEX) ttp

mentor: mentor.tex
	$(PDFLATEX) mentor

clean:
	/bin/rm -f *.aux *.log *.dvi *.bbl *.blg figures/*.pdf

veryclean: clean
	/bin/rm -f prop.pdf facilities.pdf budgetjustify.pdf \
	data.pdf supdocslist.pdf \
	reu.pdf collab.pdf
