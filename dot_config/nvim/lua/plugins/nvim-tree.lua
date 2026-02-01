return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>e", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle file tree" },
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = true,
        ignore = false,
      },
      update_focused_file = {
        enable = true,
        update_root = false,
      },
    })
    
    -- Open nvim-tree automatically on startup
    vim.api.nvim_create_autocmd({ "VimEnter" }, {
      callback = function()
        require("nvim-tree.api").tree.open()
      end,
    })
  end,
}
