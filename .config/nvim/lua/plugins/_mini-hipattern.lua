return {
  {
    "nvim-mini/mini.hipatterns",
    opts = function(_, opts)
      local hipatterns = require("mini.hipatterns")

      -- Simple HSL to HEX converter
      local function hsl_to_hex(h, s, l)
        s = s / 100
        l = l / 100
        local c = (1 - math.abs(2 * l - 1)) * s
        local x = c * (1 - math.abs((h / 60) % 2 - 1))
        local m = l - c / 2
        local r, g, b = 0, 0, 0
        if h < 60 then
          r, g, b = c, x, 0
        elseif h < 120 then
          r, g, b = x, c, 0
        elseif h < 180 then
          r, g, b = 0, c, x
        elseif h < 240 then
          r, g, b = 0, x, c
        elseif h < 300 then
          r, g, b = x, 0, c
        else
          r, g, b = c, 0, x
        end
        local function to_hex(n)
          return string.format("%02x", math.floor((n + m) * 255))
        end
        return "#" .. to_hex(r) .. to_hex(g) .. to_hex(b)
      end

      -- extends Lazyvim's default opts
      opts.highlighters = opts.highlighters or {}
      opts.highlighters.hsl_function = {
        -- Safe pattern, no leading ()
        -- only matches literal int like: hslToHex(10, 20, 80)
        pattern = "hslToHex%(%d+%s*,%s*%d+%s*,%s*%d+%s*%)",
        group = function(_, match)
          local h, s, l = match:match("(%d+)%s*,%s*(%d+)%s*,%s*(%d+)")
          if not h then
            return nil
          end
          local hex = hsl_to_hex(tonumber(h), tonumber(s), tonumber(l))
          return hipatterns.compute_hex_color_group(hex, "bg")
        end,
        extmark_opts = { priority = 5000 },
      }
      return opts
    end,
  },
}
