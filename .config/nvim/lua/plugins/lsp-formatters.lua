return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        cpp = { "clang_format" },
        c = { "clang_format" },
        css = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylua" },
        python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
        sh = { "shfmt" },
        bash = { "shfmt" },
      },
      formatters = {
        prettier = {
          prepend_args = {
            "--prose-wrap",
            "always",
            "--print-width",
            "80",
            "--tab-width",
            "4",
          },
        },
        clang_format = {
          prepend_args = {
            "--style=Google",
          },
        },
      },
    },
  },
}
