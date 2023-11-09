local opts = {noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>f", ":lua vim.lsp.buf.format({async = false})<CR>", opts)
keymap("n", ">", ":BufferNext<CR>", opts)
keymap("n", "<", ":BufferPrevious<CR>", opts)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "k", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
