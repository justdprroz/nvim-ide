-- Tab sizes and tabs to spaces
local set = vim.opt
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

set.expandtab = true
set.hidden = true
set.termguicolors = true
-- Shortcuts
--vim.keymap.set("n", "<Leader>q", ":q!")
vim.api.nvim_set_keymap("n", "<C-[>", ":BufferLineCyclePrev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-]>", ":BufferLineCycleNext<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<Leader>`", ":ToggleTerm direction=float<CR>", {noremap = true})
vim.api.nvim_set_keymap("t", "<Leader>`", "<C-\\><C-n>:ToggleTerm<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeFocus<CR>", {noremap = true})

