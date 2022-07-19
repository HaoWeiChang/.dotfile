local cmp = require("cmp")
local lspconfig = require("lspconfig")

local nnoremap = require("haoweichang.keymap").nnoremap
local inoremap = require("haoweichang.keymap").inoremap

cmp.setup({
  snippet = {
    expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = cmp.mapping.preset.insert({
	["<C-b>"] = cmp.mapping.scroll_docs(-4),
	["<C-f>"] = cmp.mapping.scroll_docs(4),
	["<C-Space>"] = cmp.mapping.complete({}),
	["<C-y>"] = cmp.mapping.confirm({ select = true }),
	-- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" }, -- For luasnip users.
  },
  {
    { name = "buffer" },
  })
})

local function config(_config)
    return vim.tbl_deep_extend("force", {
		capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
		on_attach = function()
            nnoremap("gd", ":lua vim.lsp.buf.definition()<CR>")
            nnoremap("K", ":lua vim.lsp.buf.hover()<CR>")
            nnoremap("<leader>vws", ":lua vim.lsp.buf.workspace_symbol()<CR>")
            nnoremap("<leader>vd", ":lua vim.diagnostic.open_float()<CR>")
            nnoremap("[d", ":lua vim.diagnostic.goto_prev()<CR>")
            nnoremap("]d", ":lua vim.diagnostic.goto_next()<CR>")
            nnoremap("<leader>vca", ":lua vim.lsp.buf.code_action()<CR>")
            nnoremap("<leader>vrr", ":lua vim.lsp.buf.references()<CR>")
            nnoremap("<leader>vrn", ":lua vim.lsp.buf.rename()<CR>")
            inoremap("<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
		end,
	}, _config or {})
end

--setup language server
lspconfig.gopls.setup(config({
	  cmd = { "gopls", "serve" },
	  settings = {
		gopls = {
		  analyses = {
			 unusedparams = true,
		  },
		  staticcheck = true,
		},
	},
}))

require("lspconfig").pylsp.setup(config {})

require("lspconfig").sumneko_lua.setup(config({
	settings = {
		Lua = {
		  runtime = {
			version = "LuaJIT",
		  },
		  diagnostics = {
			globals = { "vim" },
			neededFileStatus = {
				["codestyle-check"] = "Any",
			},
		  },
		  workspace = {
			library = vim.api.nvim_get_runtime_file("", true),
		  },
		  telemetry = {
			enable = false,
		  },
		  format = {
			  enable = true,
			  defaultConfig = {
				  indent_style = "space",
				  indent_size = "4",
			  },
		  },
		},
	  },
}))
