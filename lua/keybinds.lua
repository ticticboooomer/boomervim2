local opts = {noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>f", ":lua vim.lsp.buf.format({async = false})<CR>", opts)
