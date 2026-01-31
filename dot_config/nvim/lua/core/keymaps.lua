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

local telescope_available, builtin = pcall(require, 'telescope.builtin')
if telescope_available then
    map('n', '<leader>ff', builtin.find_files, with_desc('Telescope find files'))
    map('n', '<leader>fg', builtin.live_grep, with_desc('Telescope live grep'))
    map('n', '<leader>fb', builtin.buffers, with_desc('Telescope buffers'))
    map('n', '<leader>fh', builtin.help_tags, with_desc('Telescope help tags'))
end
