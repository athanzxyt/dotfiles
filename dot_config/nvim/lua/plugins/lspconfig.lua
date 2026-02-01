return {
  "neovim/nvim-lspconfig",
  -- LSP configuration plugin for Neovim
  -- In Neovim 0.11+, use vim.lsp.config() instead of require('lspconfig')
  -- This plugin provides compatibility layer and helper functions
  config = function()
    -- nvim-lspconfig provides compatibility layer for plugins using old API
    -- For new LSP configs, use vim.lsp.config() directly instead:
    -- vim.lsp.config({ name = "server_name", ... })
    -- vim.lsp.enable({ name = "server_name" })
    --
    -- Example LSP server setup:
    -- vim.lsp.config({
    --   name = "lua_ls",
    --   cmd = { "lua-language-server" },
    --   root_dir = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1]),
    -- })
    -- vim.lsp.enable({ name = "lua_ls" })
  end,
}
