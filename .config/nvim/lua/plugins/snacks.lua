local dos_rebel_classic = [[
 ██████   █████                   █████   █████  ███                 
░░██████ ░░███                   ░░███   ░░███  ░░░                  
 ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████  
 ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███ 
 ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███ 
 ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███ 
 █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████
░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░ 

]]

return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      explorer = { enabled = false },
      dashboard = {
        preset = {
          header = dos_rebel_classic,
        },
      },
      -- picker = {
      --   layout = {
      --     reverse = false,
      --     layout = {
      --       box = "vertical",
      --       backdrop = false,
      --       width = 0.9,
      --       height = 0.90,
      --       border = "none",
      --       {
      --         box = "vertical",
      --         { win = "input", height = 1, border = "rounded", title = "{title} {live} {flags}", title_pos = "center" },
      --         { win = "list", title = " Results ", title_pos = "center", border = "rounded" },
      --       },
      --       {
      --         win = "preview",
      --         title = "{preview:Preview}",
      --         border = "rounded",
      --         title_pos = "center",
      --         height = 0.7,
      --       },
      --     },
      --   },
      -- },
    },
    -- stylua: ignore
    keys = {
    { "<leader>,", false },
    -- { "<leader>e", false },
    { "<leader>n", function() require("noice").cmd("history") end, desc = "Notification History" },
    { "<leader><space>", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>ff", function() Snacks.picker.files({hidden = true, ignored= false}) end, desc = "Find Files (Root Dir)" },
    { "<leader>fF", function() Snacks.picker.files({hidden = true, root = false}) end, desc = "Find Files (cwd)" },
    { "<leader>fh", function() Snacks.picker.help() end, desc = "Find Help Files" },
    { "<leader>/", function () Snacks.picker.grep({args = { "--hidden", "--glob", "!.git/*" }}) end, desc = "Grep (Root Dir) rg" },

    -- git
    { "<leader>gd", false },
    { "<leader>gD", false },
    { "<leader>gs", false },
    { "<leader>gS", false },
    },
  },
}
