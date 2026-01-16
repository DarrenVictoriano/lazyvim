return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "windwp/nvim-autopairs",
  },
  opts = function(_, opts)
    -- setup autopairs itself
    require("nvim-autopairs").setup({
      check_ts = true,
      fast_wrap = {},
    })

    -- hook autopairs into cmp
    local cmp = require("cmp")
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local handlers = require("nvim-autopairs.completion.handlers")

    cmp.event:on(
      "confirm_done",
      cmp_autopairs.on_confirm_done({
        filetypes = {
          ["*"] = {
            ["("] = {
              kind = {
                cmp.lsp.CompletionItemKind.Function,
                cmp.lsp.CompletionItemKind.Method,
              },
              handler = handlers["*"],
            },
          },
          tex = false,
        },
      })
    )

    return opts
  end,
}
