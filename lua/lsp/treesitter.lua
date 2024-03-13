-- Treesitter configs
require('nvim-treesitter.configs').setup {
	-- Install the parsers for the languages you want to comment in
	-- Here are the supported languages:
	ensure_installed = {
		'c', 'cpp', 'css', 'html', 'javascript', 'lua', 'php', 'python', 'scss', 'tsx', 'typescript', 'vim', 'vue'
	},

	context_commentstring = {
		enable = true,
	},
}
