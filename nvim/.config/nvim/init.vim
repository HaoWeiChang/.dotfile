" Setup nvim
syntax on
set number relativenumber
set encoding=utf-8
set hidden
set tabstop=4
set shiftwidth=4
set autoindent
set nowritebackup
set title
set cursorline
set cmdheight=1
set updatetime=750


" Setup Statusline
set laststatus=2
set statusline=
set statusline=%f


" Setup Plugins

call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mattn/emmet-vim'
Plug 'preservim/tagbar'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
