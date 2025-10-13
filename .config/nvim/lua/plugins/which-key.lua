return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      { "<leader>h", group = "harpoon" },
      { "<leader>K", group = "Keyword help" },
      { "<leader><space>", group = "Opened Buffers" },
      { "<leader>e", hidden = true },
      { "<leader>E", hidden = true },
    },
    keys = {
      scroll_down = "<c-j>", -- binding to scroll down inside the popup
      scroll_up = "<c-k>", -- binding to scroll up inside the popup
    },
  },
}
