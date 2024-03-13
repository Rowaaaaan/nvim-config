local km = vim.keymap

-- Move to previous/next
km.set("n", "<A-,>", "<cmd>BufferPrevious<cr>", { noremap = true })
km.set("n", "<A-.>", "<cmd>BufferNext<cr>", { noremap = true })

-- Re-order to previous/next
km.set("n", "<A-s-,>", "<cmd>BufferMovePrevious<cr>", { noremap = true })
km.set("n", "<A-s-.>", "<cmd>BufferMoveNext<cr>", { noremap = true })

-- Goto buffer in position...
km.set("n", "<A-1>", "<cmd>BufferGoto 1<cr>", { noremap = true })
km.set("n", "<A-2>", "<cmd>BufferGoto 2<cr>", { noremap = true })
km.set("n", "<A-3>", "<cmd>BufferGoto 3<cr>", { noremap = true })
km.set("n", "<A-4>", "<cmd>BufferGoto 4<cr>", { noremap = true })
km.set("n", "<A-5>", "<cmd>BufferGoto 5<cr>", { noremap = true })
km.set("n", "<A-6>", "<cmd>BufferGoto 6<cr>", { noremap = true })
km.set("n", "<A-7>", "<cmd>BufferGoto 7<cr>", { noremap = true })
km.set("n", "<A-8>", "<cmd>BufferGoto 8<cr>", { noremap = true })
km.set("n", "<A-9>", "<cmd>BufferGoto 9<cr>", { noremap = true })
km.set("n", "<A-0>", "<cmd>BufferLast<cr>", { noremap = true })

-- Pin/unpin buffer
km.set("n", "<A-p>", "<cmd>BufferPin<cr>", { noremap = true })

-- Close buffer
km.set("n", "<A-c>", "<cmd>BufferClose<cr>", { noremap = true })
-- Restore buffer
km.set("n", "<A-s-c>", "<cmd>BufferRestore<cr>", { noremap = true })


-- Magic buffer-picking mode
km.set("n", "<C-p>", "<cmd>BufferPick<cr>", { noremap = true })
km.set("n", "<C-p>", "<cmd>BufferPickDelete<cr>", { noremap = true })

-- Sort automatically by...
km.set("n", "<Space>bb", "<cmd>BufferOrderByBufferNumber<cr>", { noremap = true })
-- km.set("n", "<Space>bd", "<cmd>BufferOrderByDirectory<cr>", { noremap = true })
km.set("n", "<Space>bl", "<cmd>BufferOrderByLanguage<cr>", { noremap = true })
km.set("n", "<Space>bw", "<cmd>BufferOrderByWindowNumber<cr>", { noremap = true })

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
