local inoremap = require("haoweichang.keymap").inoremap


inoremap("{{", "{}<ESC>i")
inoremap("{<CR>", "{<CR>}<ESC>O")
