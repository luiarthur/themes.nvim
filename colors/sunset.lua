-- https://coolors.co/palette/3d5a80-98c1d9-e0fbfc-e7b4a5-ee6c4d-293241
local color_scheme = {
  primary_bg    = "#161A1D", -- carbon
  visual        = "#293241", -- jet black

  literal       = "#ee6c4d", -- burnt peach
  function_name = "#e7b4a5", -- powder blush

  comment       = "#3d5a80", -- dusk blue
  primary_fg    = "#98c1d9", -- powder blue

  special       = "#e0fbfc", -- light cyan
}

require("theme").run("sunset", color_scheme)
