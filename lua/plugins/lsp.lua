require("mason").setup()
require("mason-lspconfig").setup()


require("mason-lspconfig").setup_handlers {
  function(server_name)        -- default handler (optional)
    require("lspconfig")[server_name].setup {
      capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
  end,
}

local lspconfig = require 'lspconfig'
local configs = require 'lspconfig.configs'

configs.solidity = {
  default_config = {
    cmd = {'nomicfoundation-solidity-language-server', '--stdio'},
    filetypes = { 'solidity' },
    root_dir = lspconfig.util.find_git_ancestor,
    single_file_support = true,
  },
}

lspconfig.solidity.setup {}


