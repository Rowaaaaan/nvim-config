require("mason").setup()
require("mason-lspconfig").setup()
require("lsp.handlers")
require("lsp.on_attach")
require("lsp.diagnostics")
require("lsp.formatting")

-- Symbols outline
require("aerial").setup()
require("telescope").load_extension("aerial")
