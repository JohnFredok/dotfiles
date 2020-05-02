# DOTFILES
# https://nickgerace.dev

MAKEPATH:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
CURRENT:=$(MAKEPATH)/current

install:
	cp $(CURRENT)/.zshrc $(HOME)/
	cp $(CURRENT)/.tmux.conf $(HOME)/
	cp $(CURRENT)/.vimrc $(HOME)/
	cp $(CURRENT)/settings.json $(HOME)/.config/Code/User/
	@printf "\nNow, install oh-my-zsh: https://ohmyz.sh/\n"

push:
	-cp $(HOME)/.zshrc $(CURRENT)/
	-cp $(HOME)/.tmux.conf $(CURRENT)/
	-cp $(HOME)/.vimrc $(CURRENT)/
	-cp $(HOME)/.config/Code/User/settings.json $(CURRENT)

ubuntu:
	sudo apt update
	sudo apt install zsh fish tree cloc speedtest-cli libclang-dev llvm libssl-dev build-essential wget curl make git tmux vim
