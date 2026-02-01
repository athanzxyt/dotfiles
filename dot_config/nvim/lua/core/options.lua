-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Cursorline & column
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.termguicolors = true

-- Tabs as spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Highlight tweaks
vim.cmd([[ highlight CursorLine guibg=#2a2a2a ]])
vim.cmd([[ highlight CursorColumn guibg=#1f1f1f ]])
vim.cmd([[ highlight CursorLineNr gui=bold guifg=#ffaa00 ]])
