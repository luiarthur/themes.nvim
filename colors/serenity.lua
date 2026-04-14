-- Gradient based
local color_scheme = {
  -- Colors are listed from darkest to lightest
  primary_bg    = "#161A1D", -- carbon

  visual        = "#023B5F",
  comment       = "#28666E",
  literal       = "#7C9885",
  function_name = "#B5B682",
  primary_fg    = "#FEDC97",

  special       = "#FFF5EE", -- smoke
}

require("theme").run("serenity", color_scheme)
