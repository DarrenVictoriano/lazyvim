return {
  {
    "folke/snacks.nvim",
    -- stylua: ignore
    keys = {
      -- finder
    { "<leader>,", false },
    { "<leader><space>", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>ff", function() Snacks.picker.files({hidden = true}) end, desc = "Find Files (Root Dir)" },
    { "<leader>fF", function() Snacks.picker.files({hidden = true, root = false}) end, desc = "Find Files (cwd)" },
    },
  },
}
