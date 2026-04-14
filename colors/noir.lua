-- https://coolors.co/gradient-palette/f2f0f0-0f0e0e?number=7
local color_scheme = {
  -- 7 shades of grey
  primary_bg    = "#0F0E0E",
  visual        = "#252525",
  comment       = "#5B5959",
  function_name = "#817F7F",
  primary_fg    = "#CCCACA",
  special       = "#F2F0F0",

  -- A single non-grey color
  literal       = "#ED0000",
}

require("theme").run("noir", color_scheme)
