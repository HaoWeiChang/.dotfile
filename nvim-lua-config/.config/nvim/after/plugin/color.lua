vim.g.gruvbox_contrast_dark = "hard"
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.g.gruvbox_invert_selection = '0'
vim.o.background = "dark"

vim.cmd([[colorscheme tokyonight]])


local set_hl = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
end

set_hl("SignColumn", {
    bg = "none",
})

set_hl("ColorColumn", {
    ctermbg = 0,
    bg = "#555555",
})

set_hl("CursorLineNR", {
    bg = "None"
})

set_hl("Normal", {
    bg = "none"
})

set_hl("LineNr", {
    fg = "#5eacd3"
})

set_hl("netrwDir", {
    fg = "#5eacd3"
})
