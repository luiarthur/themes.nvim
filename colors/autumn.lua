-- Gradient based
local color_scheme = {
  -- Colors are listed from darkest to lightest

  primary_bg    = "#161A1D", -- carbon

  visual        = "#3A0635",
  comment       = "#A6645C",
  literal       = "#EC985C",
  function_name = "#9E8397",
  primary_fg    = "#DBD6D3",

  special       = "#FFF5EE", -- smoke
}

require("theme").run("autumn", color_scheme)
