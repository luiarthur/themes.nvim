-- black to grey
-- https://coolors.co/gradient-palette/efe9e9-0f0e0e?number=6
local color_scheme = {
  primary_bg    = "#0F0E0E",
  cursor_line   = "#3C3A3A",
  comment       = "#696666",
  function_name = "#959191",
  primary_fg    = "#C2BDBD",
  special       = "#EFE9E9",

  literal       = "#ED0000",
}

require("theme").run("noir", color_scheme)
