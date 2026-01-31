require("lazy").setup({
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
        config = function()
            require("onedarkpro").setup({
                options = {
                    cursorline = true,
                    transparency = false,
                }
            })
            vim.cmd("colorscheme onedark")
        end,
    },

    -- Lualine statusline
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                    section_separators = '',
                    component_separators = '',
                },
            })
        end,
    },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Treesitter syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "lua", "vim", "bash", "markdown", "json",
                    "html", "css", "javascript", "python",
                },
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },

    -- Git signs (gutter markers + inline blame)
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({
                current_line_blame = true,
                signs = {
                    add = { text = "+" },
                    change = { text = "~" },
                    delete = { text = "-" },
                },
            })
        end,
    },

    -- Tailwind Tools
    {
        "luckasRanarison/tailwind-tools.nvim",
        name = "tailwind-tools",
        build = ":UpdateRemotePlugins",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
        opts = {
            document_color = {
                enabled = true,
                kind = "inline",
                inline_symbol = "● ",
            },
        }
    },
})
