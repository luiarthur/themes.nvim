-- https://coolors.co/palette/588b8b-ffffff-ffd5c2-f28f3b-c8553d-2d3047-93b7be
local color_scheme = {
  primary_bg    = "#2d3047", -- space indigo
  cursor_line   = "#588b8b", -- dark cyan

  literal       = "#c8553d", -- rosy
  function_name = "#f28f3b", -- tiger

  comment       = "#93b7be", -- ocean blue
  primary_fg    = "#FFD5C2", -- almond silk

  special       = "#FFF5EE", -- smoke
}

require("theme").run("ocean", color_scheme)
