require("lazy").setup({
  "folke/which-key.nvim",
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme moonfly]])
    end
  },
  -- {
  --  "EdenEast/nightfox.nvim",
  --  config = function()
  --    require('nightfox')
  --    vim.cmd("colorscheme nightfox")
  --  end
  --},
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("plugins.lsp")
    end
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = function()
      require("plugins.nvim-tree")
    end
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true
  },
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "rafamadriz/friendly-snippets",
      "L3MON4D3/LuaSnip",
      'saadparwaiz1/cmp_luasnip'
    },
    version = "2.*",
    config = function()
      require("plugins.cmp")
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },
  {

    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require("plugins.nulls")
    end,

  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("plugins.telescope")
    end
  }
})
