local map = vim.keymap.set 
local opts = { noremap = true, silent = true }

local function with_desc(desc)
    return vim.tbl_deep_extend("force", opts, { desc = desc })
end

-- Normal mode
map('n', 'K', '10k', opts)
map('n', 'J', '10j', opts)
map('n', 'L', '$', opts)
map('n', 'H', '^', opts)

-- Visual mode
map('v', 'K', '10k', opts)
map('v', 'J', '10j', opts)
map('v', 'L', '$', opts)
map('v', 'H', '^', opts)

map("i", "kj", "<Esc>", opts)

-- Nvim-tree file explorer
local nvim_tree_available = pcall(require, 'nvim-tree')
if nvim_tree_available then
    map('n', '<leader>e', '<cmd>NvimTreeFindFileToggle<cr>', with_desc('Toggle file tree'))
end
