-- vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
-- vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

-- local border = {
-- 	{ "🭽", "FloatBorder" },
-- 	{ "▔",  "FloatBorder" },
-- 	{ "🭾", "FloatBorder" },
-- 	{ "▕",  "FloatBorder" },
-- 	{ "🭿", "FloatBorder" },
-- 	{ "▁",  "FloatBorder" },
-- 	{ "🭼", "FloatBorder" },
-- 	{ "▏",  "FloatBorder" },
-- }

-- LSP settings (for overriding per client)
local handlers = {
	["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
	["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
}

-- To instead override globally
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
	opts = opts or {}
	opts.border = opts.border or border or "rounded" or "single"
	return orig_util_open_floating_preview(contents, syntax, opts, ...)
end
