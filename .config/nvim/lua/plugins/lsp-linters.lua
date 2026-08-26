return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters_by_ft = {
      c = { "clangtidy" },
      cpp = { "cpplint" },
      robot = { "robocop" },
    },
    linters = {
      cpplint = {
        args = { "--filter=-whitespace/braces,-whitespace/indent" },
      },
      clangtidy = {
        cmd = "clang-tidy",
        args = { "--quiet" },
      },
      -- Override built-in robocop linter for Robocop 6 (uses `check` subcommand
      -- and `simple` output format for single-line parseable diagnostics)
      robocop = {
        cmd = "robocop",
        args = { "check", "--exit-zero" },
        stdin = false,
        stream = "stdout",
        ignore_exitcode = true,
        parser = require("lint.parser").from_errorformat("%f:%l:%c [%t] %n %m", { source = "robocop" }),
      },
    },
  },
}
