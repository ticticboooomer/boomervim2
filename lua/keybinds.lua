local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>f", ":lua vim.lsp.buf.format({async = false})<CR>", opts)
keymap("n", ">", ":BufferNext<CR>", opts)
keymap("n", "<", ":BufferPrevious<CR>", opts)
keymap("n", "<leader>zz", ":Telescope commander<CR>", opts)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "k", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

local function dap_step_over()
  require("dap").step_over()
end

local function dap_step_into()
  require("dap").step_into()
end

local function dap_continue()
  require("dap").continue()
end

local function dap_launch(config)
  require("dap").run(config)
end

vim.keymap.set("n", "<F8>", dap_step_over, opts)
vim.keymap.set("n", "<F7>", dap_step_into, opts)
vim.keymap.set("n", "<F9>", dap_continue, opts)

