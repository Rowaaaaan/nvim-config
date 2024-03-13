local plugins = {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate" -- :MasonUpdate updates registry contents
	},
	{
		"ms-jpq/coq_nvim",
		init = function()
			require("coq")
		end
	},
	"ms-jpq/coq.artifacts",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	'nvim-treesitter/nvim-treesitter',
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = {
			file_ignore_patterns = { "node_modules" },
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = { window = { border = "single" } }
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},
	'ms-jpq/chadtree',
	{
		"lewis6991/hover.nvim",
		config = function()
			require("hover").setup {
				init = function()
					-- Require providers
					require("hover.providers.lsp")
					-- require('hover.providers.gh')
					-- require('hover.providers.gh_user')
					-- require('hover.providers.jira')
					-- require('hover.providers.man')
					-- require('hover.providers.dictionary')
				end,
				preview_opts = {
					border = nil
				},
				-- Whether the contents of a currently open hover window should be moved
				-- to a :h preview-window when pressing the hover keymap.
				preview_window = false,
				title = true
			}

			-- Setup keymaps
			vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
			vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
		end
	},
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000 -- Ensure it loads first
	},
	{
		"terrortylor/nvim-comment",
		dependencies = {
			'JoosepAlviste/nvim-ts-context-commentstring',
		},
		init = function()
			require("nvim_comment").setup()
		end,
	},
	'mfussenegger/nvim-dap',
	'mhartington/formatter.nvim',
	{
		'glepnir/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				-- config
			}
		end,
		dependencies = { { 'nvim-tree/nvim-web-devicons' } }
	},
	{
		'nvim-lualine/lualine.nvim',
		init = function() require("lualine").setup() end,
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
		'simrat39/rust-tools.nvim',
		dependencies = { 'nvim-lua/plenary.nvim', 'mfussenegger/nvim-dap' }
	},
	{
		'romgrk/barbar.nvim',
		dependencies = {
			'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	},
	{
		'mattn/emmet-vim',
		init = function()
			vim.g.user_emmet_leader_key = ','
		end
	},
	-- Symbols outline
	'stevearc/aerial.nvim',
	'easymotion/vim-easymotion',
	'xuhdev/vim-latex-live-preview',
	-- 'mfussenegger/nvim-jdtls',
	-- {
	-- 	'iamcco/markdown-preview.nvim',
	-- 	init = function()
	-- 		vim.fn["mkdp#util#install"]()
	-- 	end
	-- }
	'brooth/far.vim'
}

-- Autostart coq
vim.g.coq_settings = {
	auto_start = 'shut-up',
}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup(plugins, opts)
