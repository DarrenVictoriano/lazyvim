return {
  {
    "gbprod/yanky.nvim",
      -- stylua: ignore
    keys = {
      { "p", "<Plug>(YankyPutAfter)", mode = { "n" }, desc = "Put Text After Cursor" },
      { "P", "<Plug>(YankyPutBefore)", mode = { "n" }, desc = "Put Text Before Cursor" },
      { "p", '"_dP', mode = "x", desc = "Paste without yanking" },
      { "P", '"_dP', mode = "x", desc = "Paste without yanking (before)" },
    },
  },
}
