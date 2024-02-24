local plugins = {
  {
    -- Dependencies
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- go
        "gopls",
        "gofumpt",
        "goimports-reviser",

        -- rust
        "rust-analyzer",

        -- js/ts/node
        "eslint-lsp",
        "typescript-language-server",
      },
    },
  },
  {
    -- LSP configs
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    -- Formatter
    "stevearc/conform.nvim",
    --  for users those who want auto-save conform + lazyloading!
    event = "BufWritePre",
    config = function()
      require "custom.configs.conform"
    end,
  },
  {
    -- Go tools (tag structs, auto tests...)
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    -- Rust tools (auto formatter)
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      -- vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
    },
  },
  {
    -- https://github.com/otavioschwanck/arrow.nvim
    "otavioschwanck/arrow.nvim",
    opts = {
      show_icons = true,
      leader_key = ";", -- Recommended to be a single key
    },
    cmd = {
      "ArrowFileIndex",
      "ArrowCurrentFile",
      "ArrowAction",
      "ArrowDeleteMode",
    },
  },
}

return plugins
