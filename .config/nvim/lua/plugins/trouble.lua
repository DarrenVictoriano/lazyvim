local window_opts = "focus=true win.relative=win win.position=right win.size=70"

return {
  "folke/trouble.nvim",
  opts = {
    focus = true,

    -- Map <CR> to jump_close inside Trouble windows
    keys = {
      ["<cr>"] = "jump_close",
      ["<CR>"] = "jump_close",
    },
  },
  -- stylua: ignore start
  keys = {
    { "<leader>xx", false },
    { "<leader>xX", false },
    { "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Workspace Diagnostics (Trouble)" },
    { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer Diagnostics (Trouble)" },
    { "<leader>xx", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer Diagnostics (Trouble)" },
    { "<leader>cS", "<cmd>Trouble lsp toggle " .. window_opts .. "<CR>", desc = "LSP references/definitions/... (Trouble)" },
    { "<leader>cs", "<cmd>Trouble symbols toggle " .. window_opts .. "<CR>", desc = "Symbols (Trouble)" },
    { "<leader>fo", "<cmd>Trouble symbols toggle " .. window_opts .. "<CR>", desc = "Find Symbols" },
  },
}
