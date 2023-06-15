local plugins = {
  -- Git plugin
  {
    "sindrets/diffview.nvim",
    lazy = false,
    dependencies = { "nvim-web-devicons" },
    config = function()
      require("diffview").setup()
    end,
  },
  -- Bridge between mason and LSP
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },
      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
    config = function()
      require("mason-lspconfig").setup()
      require "custom.configs.mason_lspconfig"
      require "custom.plugins.autoformat"
    end,
  },
  -- Better notifications
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup()
      vim.notify = require("notify")
    end,
  },
  {
    'stevearc/dressing.nvim',
    opts = {},
    lazy = false,
    dependencies = { "nvim-web-devicons" },
    config = function()
      require("diffview").setup()
    end,

  },
  {
    'echasnovski/mini.indentscope',
    version = '*',
    lazy = false,
    dependencies = { "nvim-web-devicons" },
    config = function()
      require("mini.indentscope").setup({ draw = { delay = 50 } })
    end,
  },
  {
    "nvim-pack/nvim-spectre",
    cmd = "Spectre",
    opts = { open_cmd = "noswapfile vnew" },
  },
  {
    "ggandor/flit.nvim",
    dependencies = { "ggandor/leap.nvim", "tpope/vim-repeat" },
    keys = function()
      ---@type LazyKeys[]
      local ret = {}
      for _, key in ipairs({ "f", "F", "t", "T" }) do
        ret[#ret + 1] = { key, mode = { "n", "x", "o" }, desc = key }
      end
      return ret
    end,
    opts = { labeled_modes = "nx" },
  },
  {
    "RRethy/vim-illuminate",
    lazy = false,
    config = function()
      require("notify").setup()
      -- vim.notify = require("illuminate")
    end,
  },
  {
    "nvim-telescope/telescope-frecency.nvim",
    lazy = false,
    config = function()
      require "telescope".load_extension("frecency")
    end,
    dependencies = { "kkharji/sqlite.lua" }
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require "telescope".load_extension("file_browser")
    end,

  },
}

return plugins
