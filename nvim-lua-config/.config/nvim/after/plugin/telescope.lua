local Map = require("haoweichang.keymap")
local nnoremap = Map.nnoremap

nnoremap("<leader>ff", ":lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", ":lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", ":lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", ":lua require('telescope.builtin').help_tags()<cr>")
nnoremap("<leader>fd", ":lua require('haoweichang.telescope').show_dotfiles()<cr>")







-- git telescope
nnoremap("<C-P>", function ()
	require('telescope.builtin').git_branches()
end)
nnoremap("<leader>fv", function ()
	require('telescope.builtin').git_files()
end)
