return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration
  },
  config = function()
    local neogit = require("neogit")
    neogit.setup({})

    local function keymap(mode, l, r, desc)
      vim.keymap.set(mode, l, r, { desc = desc, noremap = true, silent = true })
    end

    -- General Neogit Keymaps
    keymap("n", "<leader>gs", neogit.open, "Neogit Status")
    keymap("n", "<leader>gc", ":Neogit commit<CR>", "Neogit Commit")
    keymap("n", "<leader>gp", ":Neogit pull<CR>", "Neogit Pull")
    keymap("n", "<leader>gP", ":Neogit push<CR>", "Neogit Push")

    -- Merge conflict resolution keymaps
    keymap("n", "<leader>gd", ":DiffviewOpen<CR>", "Open Diffview in new tab")
    keymap("n", "<leader>gq", ":DiffviewClose<CR>", "Close Diffview")
  end,
}
