stow_dirs = $(wildcard */)

NODE_PKGS := neovim 

UBUNTU := sudo apt install
PACKAGES := zsh tmux git curl stow fzf htop ripgrep fd-find xclip

BASE_PKGS := gcc 

stow:
	stow --target $(HOME) --verbose $(stow_dirs)

pkgsinstall:
	$(UBUNTU) $(PACKAGES)

nodeinstall:
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
	sudo apt update && sudo apt install --no-install-recommends yarn
	for pkgs in $(NODE_PKGS);do yarn global add $$pkgs; done

rust:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh	

tree-sitter:
	cargo install tree-sitter

nvm:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
