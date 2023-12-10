require("lazy").setup({
  "folke/which-key.nvim",
  'nvim-treesitter/nvim-treesitter',
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      --  vim.cmd([[colorscheme moonfly]])
    end
  },
  { "tikhomirov/vim-glsl" },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    "OmniSharp/Omnisharp-vim"
  },
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require('nightfox')
      vim.cmd("colorscheme carbonfox")
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('plugins.lualine')
    end
  },
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
  },
  {
    "nvim-telescope/telescope-dap.nvim",
    dependencies = {
      'mfussenegger/nvim-dap',
      "theHamsta/nvim-dap-virtual-text"
    },
    config       = function()
      require("plugins.dap")
    end
  },
  {
    "FeiyouG/commander.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("plugins.commander")
    end
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require("plugins.toggleterm")
    end
  },
});
