return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "pyright",
      "clangd",
      "marksman",
      "ruff", -- python linter/formatter (fast, coded in Rust)
      "shellharden", -- bash linter
      "cpplint", -- c++ linter
      "clang-format", -- c++ formatter
      "cmakelint", -- cmake lint
    },
  },
}
