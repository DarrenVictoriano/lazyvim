return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters_by_ft = {
      cpp = { "cpplint" },
      c = { "cpplint" },
    },
    linters = {
      cpplint = {
        args = { "--filter=-whitespace/braces,-whitespace/indent" },
      },
    },
  },
}
