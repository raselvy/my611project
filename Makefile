.PHONY: clean all report.html report.pdf

all: report.html

report.html: report.Rmd pokemon_data.csv
  R -e "rmarkdown::render('report.Rmd', output_format='html_document')"

report.pdf: report.Rmd pokemon_data.csv
  R -e "rmarkdown::render('report.Rmd', output_format='pdf_document')"

clean:
  rm -f *.html *.pdf *.log *.aux *.out *.toc
