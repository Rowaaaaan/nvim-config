local rt = require("rust-tools")

-- Attach keybinds only when the Rust buffer is attached to the LSP.
rt.setup({
	server = {
		on_attach = function(_, bufnr)
			wk.register({
				c = {
					name = "Code actions",
					-- Hover actions
					a = { rt.code_action_group.code_action_group, "Show code actions",
						{ buffer = bufnr } },
					-- Code action groups
					h = { rt.hover_actions.hover_actions, "Show hover actions", { buffer = bufnr } },
				}
			}, { prefix = "<leader>" })
		end,
	},
})
