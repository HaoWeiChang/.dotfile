" Nice menu when typing `:find *.py`
"set wildmode=longest,list,full
"set wildmenu
"" Ignore files
"set wildignore+=*.pyc
"set wildignore+=*_build/*
"set wildignore+=**/coverage/*
"set wildignore+=**/node_modules/*
"set wildignore+=**/android/*
"set wildignore+=**/ios/*
"set wildignore+=**/.git/*

" Setup Plugins
call plug#begin('~/.vim/plugged')

"Setup LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'


" Setup telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


" Setup treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}



" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'



" Setup language
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

lua require('haoweichang')

let mapleader = " " 
inoremap {<CR> {<CR>}<esc>ko
inoremap {{ {}<esc>i
inoremap (( ()<esc>i
inoremap "" ""<esc>i

nnoremap <leader>ee oif err != nil {<CR>return nil, err<CR>}<esc>kkI<esc>



