stow_dirs = $(wildcard */)

UBUNTU := sudo apt install

NODE_PKGS := neovim 

PACKAGES := zsh tmux git curl stow fzf htop ripgrep fd-find

BASE_PKGS := gcc 

stow:
	stow --target $(HOME) --verbose $(stow_dirs)

pkgsinstall:
	$(UBUNTU) $(PACKAGES)

test:
	echo $(stow_dirs)
	echo $(HOME)
