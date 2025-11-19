return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters_by_ft = {
      c = { "clangtidy" },
      cpp = { "cpplint" },
    },
    linters = {
      cpplint = {
        args = { "--filter=-whitespace/braces,-whitespace/indent" },
      },
      clangtidy = {
        cmd = "clang-tidy",
        args = { "--quiet" },
      },
    },
  },
}
