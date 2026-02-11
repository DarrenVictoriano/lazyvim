return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  keys = function()
    local keys = {
      {
        "<leader>hh",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon File",
      },
      {
        "<leader>hl",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon Quick Menu",
      },
      -- custom keys
      {
        "<F6>",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "Harpoon to File 6",
      },
      {
        "<F5>",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "Harpoon to File 5",
      },
      {
        "<F4>",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "Harpoon to File 4",
      },
      {
        "<F8>",
        function()
          require("harpoon"):list():select(4)
        end,
        desc = "Harpoon to File 8",
      },
    }
    return keys
  end,
}
