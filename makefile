TARGET := main.pdf

.PHONY: all clean distclean

all: $(TARGET)

clean:
	$(RM) *.aux *.log *.toc

distclean: clean
	$(RM) $(TARGET)

%.pdf: %.tex
	lualatex $<
	lualatex $<
