pdf: dvi
	dvips -o bare_adv.ps -Ppdf -G0 -t paper bare_adv.dvi
	ps2pdf -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true bare_adv.ps bare_adv.pdf

dvi:
	latex bare_adv
	latex bare_adv
# uncomment if you cite things
#	bibtex wigreport
#	latex wigreport

clean:
	rm -f text/*~
	rm -f bib/*~
	rm -f figs/*~
	rm -f *~
	rm -f *.aux *.bbl *.blg *.log
