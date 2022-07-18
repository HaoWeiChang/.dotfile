local Maps = require("haoweichang.keymap")
local nnoremap = Maps.nnoremap
local inoremap = Maps.inoremap
local vnoremap = Maps.vnoremap

nnoremap("<leader>pp", ":Ex<cr>")
inoremap("C-c", "<ESC>")


vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")
