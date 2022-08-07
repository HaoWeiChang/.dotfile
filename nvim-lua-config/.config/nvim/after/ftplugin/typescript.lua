local Maps = require("haoweichang.keymap")
local inoremap = Maps.inoremap
inoremap("[[", "[]<ESC>i")
inoremap("((", "()<ESC>i")
inoremap("{{", "{}<ESC>i")
