-- Gradient based
local color_scheme = {
  -- Colors are listed from darkest to lightest

  primary_bg    = "#161A1D", -- carbon

  cursor_line   = "#4F4202",
  comment       = "#8B7F15",
  literal       = "#C7BC28",
  function_name = "#D6CC6B",
  primary_fg    = "#E5DCAD",

  special       = "#FFF5EE", -- smoke
}

require("theme").run("yellow", color_scheme)
