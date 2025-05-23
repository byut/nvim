local lspconfig = require("lspconfig")
local conform = require("conform")

lspconfig["bashls"].setup({
    on_attach = require("byut.defaults.lsp").on_attach,
    capabilities = require("byut.defaults.lsp").capabilities(),
})

conform.formatters_by_ft.sh = { "shfmt" }
