stow_dirs = $(wildcard */)

NODE_PKGS := neovim typescript ts-node ts-node-dev

UBUNTU := sudo apt install
PACKAGES := zsh tmux git curl stow fzf htop ripgrep fd-find xclip build-essential

BASE_PKGS := gcc 

stow:
	stow --target $(HOME) --verbose $(stow_dirs)

pkgs:
	$(UBUNTU) $(PACKAGES)

zsh:
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	chsh -s $(which zsh)

yarn:
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
