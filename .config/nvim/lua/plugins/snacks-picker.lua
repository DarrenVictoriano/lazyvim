return {
  {
    "folke/snacks.nvim",
    -- stylua: ignore
    keys = {
    { "<leader>,", false },
    { "<leader><space>", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>ff", function() Snacks.picker.files({hidden = true, ignored= false}) end, desc = "Find Files (Root Dir)" },
    { "<leader>fF", function() Snacks.picker.files({hidden = true, root = false}) end, desc = "Find Files (cwd)" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "Find Help Files" },
    },
  },
}
