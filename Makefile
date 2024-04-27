FILE=main.tex

watch:
	latexmk -pdf -pvc -r ~/.config/latexmk/latexmkrc $(FILE)

clean:
	latexmk -c && rm main.{bbl,glo,ist,pdf,glg,gls} ; rm *.fls

build:
	latexmk -pdf && latexmk -c ; rm main.bbl
