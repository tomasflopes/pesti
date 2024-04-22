FILE=main.tex

watch:
	latexmk -pdf -pvc -r ~/.config/latexmk/latexmkrc $(FILE)

clean:
	latexmk -c && rm main.pdf ; rm main.ist ; rm main.glo ; rm main.glsdefs ; rm main.bbl

build:
	latexmk -pdf && latexmk -c ; rm main.bbl
