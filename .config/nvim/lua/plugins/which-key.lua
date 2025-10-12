return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      -- { "<leader><tab>", hidden = true },
      -- { "<leader>b", hidden = true },
      -- { "<leader>e", group = "explorer" },
      -- { "<leader>f", group = "find" },
      -- { "<leader>h", group = "harpoon" },
      -- { "<leader>g", group = "git" },
      -- { "<leader>w", group = "windows" },
      -- { "<leader>t", group = "tabs" },
      -- { "<leader>s", group = "sessions" },
      -- { "<leader>x", group = "trouble" },
      -- { "<leader>fd", group = "find diagnostics" },
      -- { "<leader>fv", group = "find variables" },
    },
    keys = {
      scroll_down = "<c-j>", -- binding to scroll down inside the popup
      scroll_up = "<c-k>", -- binding to scroll up inside the popup
    },
  },
}
