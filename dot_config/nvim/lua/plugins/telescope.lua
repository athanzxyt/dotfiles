return {
  'nvim-telescope/telescope.nvim',
  branch = 'master',
  dependencies = { 
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>ff', function() require('telescope.builtin').find_files() end, desc = 'Telescope find files' },
    { '<leader>fg', function() require('telescope.builtin').live_grep() end, desc = 'Telescope live grep' },
    { '<leader>fb', function() require('telescope.builtin').buffers() end, desc = 'Telescope buffers' },
    { '<leader>fh', function() require('telescope.builtin').help_tags() end, desc = 'Telescope help tags' },
  },
  config = function()
    require('telescope').setup({})
    
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end,
}
