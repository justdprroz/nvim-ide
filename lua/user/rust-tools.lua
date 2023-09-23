local rt = require("rust-tools")
local map = vim.keymap

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      map.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      map.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})

