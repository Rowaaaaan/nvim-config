-- TODO: CLEAN THIS UP and split keybinds by group. IT LOOKS LIKE TRASH
require("keys.barbar_keys")
local wk = require("which-key")
local km = vim.keymap

vim.g.mapleader = " "

km.set("n", "<Tab>", "<cmd>bn!<cr>", { noremap = true })
km.set("n", "<S-Tab>", "<cmd>bp!<cr>", { noremap = true })
km.set({ "n", "i", "v" }, "<F2>", function() vim.lsp.buf.rename() end)

wk.register({ ["<leader>."] = { "<cmd>Telescope find_files<cr>", "Find File" }, })

wk.register({
	f = {
		name = "File",
		s = { "<cmd>w<cr>", "save file" },
		S = { "<cmd>wa<cr>", "save all" },
		b = { "<cmd>CHADopen<cr>", "CHADtree" },
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		h = { "History", "file history" },
		n = { "<cmd>enew<cr>", "New File" },
		c = { ":EditConf", "edit nvim config" },
		k = { ":EditKeys", "edit nvim keybinds" },
		p = { ":EditPlugins", "edit nvim plugins" },
	}
}, { prefix = "<leader>" })

wk.register({
	l = {
		name = "LSP",
		d = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
		-- Requires aerial.vim
		o = { "<cmd>Telescope aerial<cr>", "Show symbols outline" },
		e = { function() vim.diagnostic.open_float() end, "Show diagnostics in hover" },
		q = { function() vim.diagnostic.setloclist() end, "Show diagnostics list" },
	}
}, { prefix = "<leader>" })

wk.register({
	b = {
		name = "Buffers",
		d = { "<cmd>bd<cr>", "Delete buffer" },
		f = { "<cmd>bfirst<cr>", "Go to first buffer" },
		l = { "<cmd>blast<cr>", "Go to last buffer" },
		n = { "<cmd>bnext<cr>", "Go to next buffer" },
		p = { "<cmd>bprevious<cr>", "Go to previous buffer" },
		t = { "<cmd>silent !kitty -e bash & disown<cr>", "Open terminal in new window" },
		g = { "<cmd>silent !kitty -e lazygit & disown<cr>", "git gui using lazygit" },
		["#"] = { "<cmd>b#<cr>", 'Previously opened buffer' },
		["1"] = { "<cmd>b1<cr>", "Go to buffer 1" },
		["2"] = { "<cmd>b2<cr>", "Go to buffer 2" },
		["?"] = { "<cmd>Telescope buffers<cr>", "See open buffers" },
	}
}, { prefix = "<leader>" })

-- Bind window controls to W for wumbo
wk.register({ ["<leader>w"] = { "<C-W>", "Window controls" } })

-- Easymotion
wk.register({

	["<leader>"] = {
		name = "Easymotion",
		["<leader>"] = { "<Plug>(easymotion-jumptoanywhere)", "Jump to anywhere" },
		w = { "<Plug>(easymotion-w)", "Forward jump by beginning of word" },
		W = { "<Plug>(easymotion-w)", "Backward Jump by beginning of word" },
	}
}, { prefix = "<leader>" })
