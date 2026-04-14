-- https://coolors.co/palette/0a1128-001f54-034078-1282a2-fefcfb
local color_scheme = {
  primary_bg    = "#0A1128", -- prussian blue
  visual        = "#001F54", -- deep navy

  literal       = "#1282A2", -- cerulean
  function_name = "#6395EE", -- cornflower blue

  -- comment       = "#034078", -- yale blue
  comment       = "#52616F", -- greyish blue
  primary_fg    = "#ADADAD", -- lightgrey

  special       = "#FFF5EE", -- smoke
}

require("theme").run("byu", color_scheme)
