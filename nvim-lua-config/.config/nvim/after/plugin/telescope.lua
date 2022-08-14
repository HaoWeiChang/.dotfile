local Map = require("haoweichang.keymap")
local nnoremap = Map.nnoremap

nnoremap("<leader>ff", function() require('telescope.builtin').find_files() end)
nnoremap("<leader>fg", function() require('telescope.builtin').live_grep() end)
nnoremap("<leader>fb", function() require('telescope.builtin').buffers() end)
nnoremap("<leader>fh", function() require('telescope.builtin').help_tags() end)
nnoremap("<leader>fd", function() require('haoweichang.telescope').show_dotfiles() end)


-- git telescope
nnoremap("<C-P>", function() require('telescope.builtin').git_branches() end)
nnoremap("<leader>fv", function() require('telescope.builtin').git_files() end)
