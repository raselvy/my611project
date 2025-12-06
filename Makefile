.PHONY: clean report.html report.pdf

report.html: final_project.Rmd pokemon_data.csv
	 Rscript -e "rmarkdown::render('final_project.Rmd', output_format = 'html_document')"

report.pdf: final_project.Rmd pokemon_data.csv
	 Rscript -e "rmarkdown::render('final_project.Rmd', output_format = 'pdf_document')"

clean:
	 rm -f *.html *.pdf
