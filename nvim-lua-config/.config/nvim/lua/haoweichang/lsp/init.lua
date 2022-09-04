local nnoremap = require("haoweichang.keymap").nnoremap
local inoremap = require("haoweichang.keymap").inoremap
local lspconfig = require("lspconfig")


local update_capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

local custom_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
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

    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
        vim.api.nvim_command [[augroup end]]
    end
end


local function config(_config)
    return vim.tbl_deep_extend("force", {
        capabilities = update_capabilities,
        on_attach = custom_attach,
        flags = {
            debounce_text_changes = 150,
        },
    }, _config or {})
end

--setup language server
lspconfig.pylsp.setup(config {})

lspconfig.tsserver.setup(config {})

lspconfig.gopls.setup(config({
    cmd = { "gopls", "serve" },
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
            codelens = { test = true },
        },
    },
}))

lspconfig.sumneko_lua.setup(config({
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

lspconfig.csharp_ls.setup(config {})
