-- Gradient based
local color_scheme = {
  -- Colors are listed from darkest to lightest

  primary_bg    = "#161A1D", -- carbon

  cursor_line   = "#013207",
  comment       = "#157D30",
  literal       = "#28C758",
  function_name = "#84D89D",
  primary_fg    = "#E0E8E1",

  special       = "#FFF5EE", -- smoke
}

require("theme").run("grinch", color_scheme)
