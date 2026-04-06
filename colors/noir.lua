-- Author: Arthur Lui
-- Date: 6 April, 2026
-- Inspired by: https://coolors.co/palettes/popular/red

-- Get help on each option in nvim by (e.g. help on SpellBad):
-- :hi SpellBad
-- :help SpellBad
-- :lua vim.show_pos()

vim.cmd("highlight clear")
vim.opt.termguicolors = true
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "noir"

-- Colors
local c = {
  primary_bg    = "#161A1D", -- carbon
  cursor_line   = "#3B3B3B", -- darkgrey

  literal       = "#FF6961", -- patel red
  function_name = "#DCAE96", -- pink

  comment       = "#696969", -- grey
  primary_fg    = "#ADADAD", -- lightgrey

  match         = "#FFF5EE", -- smoke
}

require("lua.theme").run(c)
