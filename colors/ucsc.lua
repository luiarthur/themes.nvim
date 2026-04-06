-- https://coolors.co/palette/0a1128-001f54-034078-1282a2-fefcfb
local color_scheme = {
  primary_bg    = "#161A1D", -- carbon
  cursor_line   = "#003C6B", -- navy

  literal       = "#2B9FAE", -- cyan
  function_name = "#12A5DC", -- turqoise

  comment       = "#2C82B8", -- blue
  primary_fg    = "#FAC500", -- Gold

  special       = "#FFF5EE", -- smoke
}

require("theme").run("ucsc", color_scheme)
