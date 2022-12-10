local set = vim.opt
-- tab sizes
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

-- other settinfs
set.hidden = true
set.termguicolors = true

-- shortcuts
local map = vim.api.nvim_set_keymap

-- buffer navigation
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", { noremap = true })
map("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true })
map("n", "<S-q>", ":Bdelete!<CR>", { noremap = true })

-- terminal
map("n", "<Leader>`", ":ToggleTerm direction=float<CR>", {noremap = true})
map("t", "<Leader>`", "<C-\\><C-n>:ToggleTerm<CR>", {noremap = true})

-- file explorer
map("n", "<C-b>", ":NvimTreeFocus<CR>", {noremap = true})

