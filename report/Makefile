pdf: dvi
	dvips -o group1_report.ps -Ppdf -G0 -t paper group1_report.dvi
	ps2pdf -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true group1_report.ps group1_report.pdf

dvi:
	latex group1_report
	latex group1_report
# uncomment if you cite things
#	bibtex wigreport
#	latex wigreport

clean:
	rm -f text/*~
	rm -f bib/*~
	rm -f figs/*~
	rm -f *~
	rm -f *.aux *.bbl *.blg *.log
