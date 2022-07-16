require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/nvim-cmp")

	-- For luasnip users.
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")


	-- Setup telescope
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")


	-- Setup treesitter
	use("nvim-treesitter/nvim-treesitter",{
		run = ":TSUpdate"
	})


	-- Setup language
	use("gruvbox-community/gruvbox")
	use("fatih/vim-go",{
		run = ":GoUpdateBinaries"
	})

	use("TimUntersberger/neogit")
end)


