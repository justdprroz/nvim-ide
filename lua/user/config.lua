local set = vim.opt
-- tab sizes
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

-- other settinfs
set.hidden = true
--set.termguicolors = true

-- shortcuts
local map = vim.api.nvim_set_keymap

-- buffer navigation
local opts = { noremap = true, silent = true}
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)

map("n", "<S-q>", ":Bdelete!<CR>", opts)
map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-s>", "<Esc>:w<CR>i", opts)

-- termina
map("n", "<Leader>`", ":ToggleTerm direction=float<CR>", {noremap = true})
map("t", "<Leader>`", "<C-\\><C-n>:ToggleTerm<CR>", {noremap = true})

map("n", "<C-`>", ":ToggleTerm direction=float<CR>", {noremap = true})
map("t", "<C-`>", "<C-\\><C-n>:ToggleTerm<CR>", {noremap = true})

-- file explorer
map("n", "<C-b>", ":NvimTreeFocus<CR>", {noremap = true})

