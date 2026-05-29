CHROME  := /Applications/Google Chrome.app/Contents/MacOS/Google Chrome
SRC     := resume-print.html
OUT     := Vivek_Yadav_Resume.pdf
SRC_EM  := resume-print-em.html
OUT_EM  := Vivek_Yadav_Resume_EM.pdf

.PHONY: pdf pdf-em all open open-em

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

pdf-em:
	"$(CHROME)" \
		--headless=new \
		--no-sandbox \
		--disable-gpu \
		--print-to-pdf="$(OUT_EM)" \
		--print-to-pdf-no-header \
		--no-pdf-header-footer \
		--paper-width=8.27 \
		--paper-height=11.69 \
		--margin-top=0 \
		--margin-bottom=0 \
		--margin-left=0 \
		--margin-right=0 \
		"file://$(PWD)/$(SRC_EM)"
	@echo "Generated $(OUT_EM)"

all: pdf pdf-em

open: pdf
	open $(OUT)

open-em: pdf-em
	open $(OUT_EM)
