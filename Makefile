BOOK := nimprogramming
EXAMPLESCODE = $(wildcard examples/*.nim)
EXAMPLESRUN = $(subst .nim,.run, $(EXAMPLESCODE))
EXAMPLESRESULT = $(subst .nim,.result, $(EXAMPLESCODE))
SRCS = $(BOOK).adoc $(EXAMPLESCODE) $(EXAMPLESRESULT) 

.PHONY: all
all: html

html: $(BOOK).html

$(BOOK).html: $(SRCS)
	asciidoctor $<

%.run: %.nim
	nim c $< 
	mv $(subst .nim,,$<) $@

%.result: %.run
	$< > $@

clean:
	rm -f $(BOOK).html $(EXAMPLESRUN) $(EXAMPLESRESULT)
