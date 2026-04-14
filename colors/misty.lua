-- Gradient based
local color_scheme = {
  -- Colors are listed from darkest to lightest
  primary_bg    = "#161A1D", -- carbon

  visual        = "#223843",
  comment       = "#D77A61",
  literal       = "#D8B4A0",
  function_name = "#DBD3D8",
  primary_fg    = "#EFF1F3",

  special       = "#FFF5EE", -- smoke
}

require("theme").run("misty", color_scheme)
