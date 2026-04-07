-- https://coolors.co/palette
local color_scheme = {
  primary_bg    = "#161A1D", -- carbon
  cursor_line   = "#003C6B", -- navy

  literal       = "#2B9FAE", -- cyan
  function_name = "#12A5DC", -- turqoise

  comment       = "#2C82B8", -- blue
  -- primary_fg    = "#FAC500", -- Gold
  primary_fg    = "#FFDB57", -- mustard

  special       = "#FFF5EE", -- smoke
}

require("theme").run("ucsc", color_scheme)
