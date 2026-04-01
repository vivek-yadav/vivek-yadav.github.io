CHROME := /Applications/Google Chrome.app/Contents/MacOS/Google Chrome
SRC    := resume-print.html
OUT    := Vivek_Yadav_Resume.pdf

.PHONY: pdf open

pdf:
	"$(CHROME)" \
		--headless=new \
		--no-sandbox \
		--disable-gpu \
		--print-to-pdf="$(OUT)" \
		--print-to-pdf-no-header \
		--no-pdf-header-footer \
		--paper-width=8.27 \
		--paper-height=11.69 \
		--margin-top=0 \
		--margin-bottom=0 \
		--margin-left=0 \
		--margin-right=0 \
		"file://$(PWD)/$(SRC)"
	@echo "Generated $(OUT)"

open: pdf
	open $(OUT)
