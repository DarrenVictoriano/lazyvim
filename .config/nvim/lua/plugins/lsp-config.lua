return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      pyright = function(_, opts)
        opts.capabilities = opts.capabilities or vim.lsp.protocol.make_client_capabilities()
        opts.capabilities.general = opts.capabilities.general or {}
        opts.capabilities.general.positionEncodings = { "utf-8" }
      end,
      ruff = function(_, opts)
        opts.capabilities = opts.capabilities or vim.lsp.protocol.make_client_capabilities()
        opts.capabilities.general = opts.capabilities.general or {}
        opts.capabilities.general.positionEncodings = { "utf-8" }
      end,
    },
  },
}
