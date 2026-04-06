-- Author: Arthur Lui
-- Date: 6 April, 2026
-- Inspired by: https://coolors.co

-- Get help on each option in nvim by (e.g. help on SpellBad):
-- :hi SpellBad
-- :help SpellBad
-- :lua vim.show_pos()

vim.cmd("highlight clear")
vim.opt.termguicolors = true
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "usa"

-- Colors
local c = {
  primary_bg    = "#161A1D", -- soft black
  cursor_line   = "#102b3f", -- deep space blue

  literal       = "#EF233C", -- red
  function_name = "#8395C1", -- serene blue

  comment       = "#5c677d", -- blue slate
  primary_fg    = "#979dac", -- cool steel

  match         = "#EDF2F4", --platinum
}

require("lua.theme").run(c)
