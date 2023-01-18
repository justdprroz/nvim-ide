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

-- shortcuts
local map = vim.api.nvim_set_keymap

-- buffer navigation
local opts = { noremap = true, silent = true}
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts) -- Switch to buffer on the left
map("n", "<S-l>", ":BufferLineCycleNext<CR>", opts) -- !! on the right

map("n", "<S-q>", ":Bdelete!<CR>", opts) -- close current buffer
map("n", "<C-s>", ":w<CR>", opts) -- save buffer
map("i", "<C-s>", "<Esc>:w<CR>a", opts) -- save buffer from insert mode

-- terminal
-- \ + ` (slash + grave)
map("n", "<Leader>`", ":ToggleTerm direction=float<CR>", {noremap = true}) -- toggle terminal from normal mode
map("t", "<Leader>`", "<C-\\><C-n>:ToggleTerm<CR>", {noremap = true})

-- Ctrl + ` (Ctrl + grave)
map("n", "<C-`>", ":ToggleTerm direction=float<CR>", {noremap = true})
map("t", "<C-`>", "<C-\\><C-n>:ToggleTerm<CR>", {noremap = true})

-- file explorer
map("n", "<C-b>", ":NvimTreeFocus<CR>", {noremap = true})

