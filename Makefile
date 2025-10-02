NAME=draft-spaghetti-sidrops-rpki-erik-protocol

.PHONY: all
all: draft

.PHONY: draft
draft: $(NAME).txt

$(NAME).txt: $(NAME).xml
	xml2rfc $(NAME).xml --html --text --expand --allow-local-file-access

$(NAME).html: $(NAME).txt

www: $(NAME).xml
	cp $(NAME).exp.xml ~/Downloads/
	cp $(NAME).html ~/Downloads/
	cp $(NAME).txt ~/Downloads/

upload: $(NAME).html
	scp $(NAME).html $(NAME).txt chloe.sobornost.net:www

clean:
	rm -f *.html *.txt
