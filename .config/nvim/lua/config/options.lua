-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"

-- Set to `false` to prevent "non-lsp snippets"" from appearing inside completion windows
-- Motivation: Less clutter in completion windows and a more direct usage of snippets
vim.g.lazyvim_mini_snippets_in_completion = true
