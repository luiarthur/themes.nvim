-- Gradient based
local color_scheme = {
  -- Colors are listed from darkest to lightest

  primary_bg    = "#161A1D", -- carbon

  cursor_line   = "#4F3121",
  comment       = "#9E5A2B",
  literal       = "#EC8235",
  function_name = "#F2AF81",
  primary_fg    = "#F8DCCD",

  special       = "#FFF5EE", -- smoke
}

require("theme").run("orange", color_scheme)
