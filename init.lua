require("plugins")
require("lsp")
require("keys")
require("borders")
require("autocmds")

local opt = vim.opt
local g = vim.g

vim.cmd("colorscheme onedark_dark")

-- Indentation settings
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = -1
opt.shiftwidth = 0
opt.shiftround = true
opt.smartindent = true
opt.autoindent = true

-- Fold settings
opt.foldmethod = "indent"
opt.foldenable = false
opt.foldnestmax = 10
opt.foldlevel = 2

-- vim-latex settings
g.livepreview_previewer = "zathura"
g.liveprevier_engine = 'pdflatex'
