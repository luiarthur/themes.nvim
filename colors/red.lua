-- Gradient based
local color_scheme = {
  -- Colors are listed from darkest to lightest

  primary_bg    = "#161A1D", -- carbon

  visual        = "#410205",
  comment       = "#9F3136",
  literal       = "#AF5E62",
  function_name = "#BF8B8D",
  primary_fg    = "#CFB8B8",

  special       = "#FFF5EE", -- smoke
}

require("theme").run("red", color_scheme)
