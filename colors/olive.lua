-- Gradient based
local color_scheme = {
  -- Colors are listed from darkest to lightest
  primary_bg    = "#161A1D", -- carbon

  cursor_line   = "#283618",
  comment       = "#606C38",
  literal       = "#DDA15E",
  function_name = "#BC6C25",
  primary_fg    = "#FEFAE0",

  special       = "#FFF5EE", -- smoke
}

require("theme").run("olive", color_scheme)
