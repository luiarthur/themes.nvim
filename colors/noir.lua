-- black to grey
-- https://coolors.co/gradient-palette/efe9e9-100303?number=6
local color_scheme = {
  primary_bg    = "#100303",
  cursor_line   = "#3D3131",
  comment       = "#695F5F",
  function_name = "#968D8D",
  primary_fg    = "#C2BBBB",
  special       = "#EFE9E9",

  literal       = "#ED0000",
}

require("theme").run("noir", color_scheme)
