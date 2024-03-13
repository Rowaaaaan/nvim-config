-- Setup language servers.
require("mason-lspconfig").setup_handlers {
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name) -- default handler (optional)
		if (server_name == "volar") then
			require("lspconfig").volar.setup(coq.lsp_ensure_capabilities({
				filetypes = { 'typescript', 'javascript', 'javascriptreact',
					'typescriptreact', 'vue', 'json' }
			}))
		else
			if (server_name == "tsserver") then
				print("Hi")
			else
				require("lspconfig")[server_name].setup(coq.lsp_ensure_capabilities({}))
			end
		end
	end,
	-- Next, you can provide a dedicated handler for specific servers.
	-- For example, a handler override for the `rust_analyzer`:
	["rust_analyzer"] = function()
		require("rust-tools").setup {}
	end
}
