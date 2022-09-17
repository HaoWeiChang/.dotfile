require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    -- For luasnip users.
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind-nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")


    -- Setup telescope
    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope.nvim")


    -- Setup treesitter
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    -- Setup Theme
    use("ellisonleao/gruvbox.nvim")
    use("folke/tokyonight.nvim")

    -- Setup language
    use("fatih/vim-go", {
        run = ":GoUpdateBinaries"
    })

    use("TimUntersberger/neogit")
    use("nvim-lualine/lualine.nvim")
end)
