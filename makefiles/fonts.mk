# DOTFILES
# https://nickgerace.dev

IOSEVKA_VERSION:=3.0.1

iosevka:
	mkdir $(MAKEPATH)/tmp
	cd $(MAKEPATH)/tmp; wget https://github.com/be5invis/Iosevka/releases/download/v$(IOSEVKA_VERSION)/ttf-iosevka-term-$(IOSEVKA_VERSION).zip
	cd $(MAKEPATH)/tmp; unzip ttf-iosevka-term-$(IOSEVKA_VERSION).zip
	-sudo rm -r /usr/share/fonts/truetype/iosevka
	sudo mkdir -p /usr/share/fonts/truetype/iosevka
	cd $(MAKEPATH)/tmp/ttf; sudo mv * /usr/share/fonts/truetype/iosevka
	rm -r $(MAKEPATH)/tmp
	sudo fc-cache

