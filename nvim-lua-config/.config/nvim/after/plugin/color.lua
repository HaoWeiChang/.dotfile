vim.g.gruvbox_contrast_dark = "hard"
vim.o.background = "dark"

require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = false,
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    overrides = {},
})

vim.cmd([[colorscheme gruvbox]])


local set_hl = function(name, opts)
    vim.api.nvim_set_hl(0, name, opts)
end

set_hl("Normal", {
    bg = "None"
})
