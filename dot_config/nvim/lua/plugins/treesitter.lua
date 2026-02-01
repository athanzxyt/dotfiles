return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua", "vim", "bash", "markdown", "json",
      "html", "css", "javascript", "typescript", "tsx", "python",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
