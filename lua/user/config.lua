local set = vim.opt
-- tab sizes
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

-- other settinfs
set.hidden = true
set.relativenumber = true
set.number = true

-- cursor
set.guicursor = ""
set.mouse = ""

-- clipboard
set.clipboard = "unnamedplus"

-- shortcuts
local map = vim.api.nvim_set_keymap

-- buffer navigation
local opts = { noremap = true, silent = true}
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts) -- Switch to buffer on the left
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opts) -- !! on the right

map("n", "<S-q>", ":Bdelete!<CR>", opts) -- close current buffer
map("n", "<C-s>", ":w<CR>", opts) -- save buffer
map("i", "<C-s>", "<Esc>:w<CR>a", opts) -- save buffer from insert mode

-- split navigation
map("n", "<C-h>", "<C-w>h", opts);
map("n", "<C-j>", "<C-w>j", opts);
map("n", "<C-k>", "<C-w>k", opts);
map("n", "<C-l>", "<C-w>l", opts);

-- terminal
-- \ + ` (slash + grave)
-- map("n", "<Leader>`", ":ToggleTerm direction=float<CR>", {noremap = true}) -- toggle terminal from normal mode
-- map("t", "<Leader>`", "<C-\\><C-n>:ToggleTerm<CR>", {noremap = true})

-- Ctrl + ` (Ctrl + grave)
-- map("n", "<C-`>", ":ToggleTerm direction=float<CR>", {noremap = true})
-- map("t", "<C-`>", "<C-\\><C-n>:ToggleTerm<CR>", {noremap = true})

-- Focus on file explorer
map("n", "<C-b>", ":NvimTreeFocus<CR>", {noremap = true})

-- rename
map("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
