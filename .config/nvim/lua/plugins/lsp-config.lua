return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      jsonls = {
        settings = {
          json = {
            format = { enable = false }, -- Let Prettier handle formatting
            validate = { enable = false }, -- Disables strict JSON validation (trailing commas)
          },
        },
      },
      robotframework_ls = {
        on_attach = function(client, _)
          local root = client.root_dir or vim.fn.getcwd()

          -- Base paths: root (mirrors --pythonpath .), lib/, keywords/
          local pythonpath = { root, root .. "/lib", root .. "/keywords" }

          -- Dynamically add all subdirectories under tests/
          local tests_dir = root .. "/tests"
          local handle = vim.uv.fs_scandir(tests_dir)
          if handle then
            while true do
              local name, type = vim.uv.fs_scandir_next(handle)
              if not name then break end
              if type == "directory" then
                table.insert(pythonpath, tests_dir .. "/" .. name)
              end
            end
          end

          -- Pre-generated libspecs in .libspecs/ handle library go-to-definition.
          -- pythonpath is still needed for resource resolution and keyword lookup.
          client.notify("workspace/didChangeConfiguration", {
            settings = { robot = { pythonpath = pythonpath } },
          })
        end,
      },
      pyright = {
        settings = {
          pyright = {
            disableTaggedHints = true,
          },
        },
      },
    },
    setup = {
      pyright = function(_, opts)
        opts.capabilities = opts.capabilities or vim.lsp.protocol.make_client_capabilities()
        opts.capabilities.general = opts.capabilities.general or {}
        opts.capabilities.general.positionEncodings = { "utf-16" }
      end,
      ruff = function(_, opts)
        opts.capabilities = opts.capabilities or vim.lsp.protocol.make_client_capabilities()
        opts.capabilities.general = opts.capabilities.general or {}
        opts.capabilities.general.positionEncodings = { "utf-16" }
      end,
      clangd = function(_, opts)
        opts.capabilities.offsetEncoding = { "utf-16" }
      end,
    },
  },
}
