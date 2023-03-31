return {
  -- { "ggandor/flit.nvim", enabled = false },

  { "christoomey/vim-tmux-navigator" },

  { "nvim-treesitter/nvim-treesitter-context" },

  {
    "lervag/vimtex",
    module = false,
    -- config in options.lua
  },

  {
    "andrewferrier/wrapping.nvim",
    config = function()
      require("wrapping").setup()
    end
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      local nls = require("null-ls")
      return {
        -- nls.builtins.formatting.prettierd,
        -- nls.builtins.formatting.stylua,
        nls.builtins.diagnostics.flake8,
      }
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "rust",
        "yaml",
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {}
      },
    },
  },
}
