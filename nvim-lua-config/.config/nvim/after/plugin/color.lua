vim.g.gruvbox_contrast_dark = "hard"
vim.o.background = "dark"

vim.cmd([[colorscheme gruvbox]])


local set_hl = function(name, opts)
	vim.api.nvim_set_hl(0, name, opts)
end

set_hl("Normal", {
	bg = "None"
})
