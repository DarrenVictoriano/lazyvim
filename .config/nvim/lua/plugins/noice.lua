return {
  "folke/noice.nvim",
  -- stylua: ignore
  keys = {
    { "<leader>snt", function() Snacks.picker.notifications() end, desc = "Noice Picker" },
  },
}
