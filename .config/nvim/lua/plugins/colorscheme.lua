return {
  -- use catppuccin macchiato
  {
    "catppuccin/nvim",
    opts = {
      flavour = "macchiato",
    },
  },
  -- use tokyonight storm
  {
    "folke/tokyonight.nvim",
    opts = { style = "storm" },
  },
  -- enable colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
