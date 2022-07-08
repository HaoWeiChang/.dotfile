" Setup Plugins
call plug#begin('~/.vim/plugged')

"Setup LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'


" Setup telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


" Setup treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


" Setup language
Plug 'gruvbox-community/gruvbox'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'TimUntersberger/neogit'

  
call plug#end()

lua require('haoweichang')
let mapleader = " " 
nnoremap <leader>ee oif err != nil {<CR>return nil, err<CR>}<esc>kkI<esc>



nnoremap <leader>vp :Ex<CR>
