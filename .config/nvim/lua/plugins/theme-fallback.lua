local linux_theme = vim.fn.expand("~/.config/omarchy/current/theme/neovim.lua")

if vim.fn.filereadable(linux_theme) == 1 then
  -- Linux: the symlink target exists, just do nothing
  vim.notify("Omarchy theme detected, skipping fallback theme.", vim.log.levels.INFO)
  return {}
else
  -- macOS: Linux theme file doesn't exist, load macOS colorscheme
  vim.notify("Omarchy theme NOT found, loading fallback theme.", vim.log.levels.INFO)
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
end
