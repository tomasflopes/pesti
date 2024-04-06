FILE=main.tex

watch:
	latexmk -pdf -pvc -r ~/.config/latexmk/latexmkrc $(FILE)

clean:
	latexmk -c && rm main.bbl && rm main.pdf

build:
	latexmk -pdf && latexmk -c && rm main.bbl
