require("telescope").setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = " >>",
        color_devicons = true,
        path_display = { "truncate" },
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        mappings = {
            n = {
                ["<C-D>"] = require("telescope.actions").delete_buffer,
            },
            i = {
                ["<C-X>"] = false,
                ["<C-D>"] = require("telescope.actions").delete_buffer,
            },
        },
        file_ignore_patterns = { "node_modules", ".git", },
    },
})

local M = {}

M.show_dotfiles = function()
    require("telescope.builtin").find_files {
        cwd = '~/.dotfiles',
        color = false,
        hidden = true,
    }
end

return M
