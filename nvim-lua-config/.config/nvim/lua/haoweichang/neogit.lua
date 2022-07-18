local neogit = require('neogit')
local nnoremap = require('haoweichang.keymap').nnoremap

neogit.setup {}
nnoremap("<leader>go", ":lua require('neogit').open()<cr>")
nnoremap("<leader>gf", "!git fetch --all<cr>")
