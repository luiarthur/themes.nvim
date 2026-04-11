-- black to grey
-- https://coolors.co/gradient-palette/efe9e9-1f1f1f?number=6
local color_scheme = {
  primary_bg    = "#1F1F1F",
  cursor_line   = "#494747",
  comment       = "#727070",
  function_name = "#9C9898",
  primary_fg    = "#C5C1C1",
  special       = "#EFE9E9",

  literal       = "#ED0000",
}

require("theme").run("noir", color_scheme)
