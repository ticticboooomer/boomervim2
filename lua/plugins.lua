require("lazy").setup({
	"folke/which-key.nvim",
	{
		"bluz71/vim-moonfly-colors",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd([[colorscheme moonfly]])
		end,
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
	}
})
