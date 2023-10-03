local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup {
	window = {
      		completion = cmp.config.window.bordered(),
      		documentation = cmp.config.window.bordered(),
    	},
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end
	},
	sources = cmp.config.sources({
		{ name = "luasnip" },
		{ name = 'nvim_lsp' }
	}, {name = "buffer"}),
	mapping = cmp.mapping.preset.insert ({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
      		['<C-f>'] = cmp.mapping.scroll_docs(4),
      		['<C-Space>'] = cmp.mapping.complete(),
      		['<C-e>'] = cmp.mapping.abort(),
      		['<CR>'] = cmp.mapping.confirm({ select = true }),
	})
}
