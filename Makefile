# Makefile for CDS 101 RMarkdown project (v2)
# Requires: R, rmarkdown package
# Targets:
#   make eda         - knit notebooks/eda_walkthrough.Rmd
#   make report-html - knit final_report.Rmd to HTML in reports/
#   make report-pdf  - knit final_report.Rmd to PDF in reports/

RSCRIPT ?= Rscript

eda:
	$(RSCRIPT) -e "rmarkdown::render('notebooks/eda_walkthrough.Rmd', output_dir = 'notebooks')"

report-html:
	$(RSCRIPT) -e "rmarkdown::render('final_report.Rmd', output_format = 'html_document', output_dir = 'reports')"

report-pdf:
	$(RSCRIPT) -e "rmarkdown::render('final_report.Rmd', output_format = 'pdf_document', output_dir = 'reports')"

clean:
	rm -f notebooks/eda_walkthrough.html notebooks/eda_walkthrough.pdf
	rm -f reports/final_report.html reports/final_report.pdf

.PHONY: eda report-html report-pdf clean
