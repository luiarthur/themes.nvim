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

local function set(group, options)
  vim.api.nvim_set_hl(0, group, options)
end

-- Special colors
set("Normal", { fg = c.primary_fg, bg = c.primary_bg })
set("SpellRare", { fg = c.literal })
set("Constant", { fg = c.primary_fg })

set("CurSearch", { fg = c.primary_bg, bg = c.match, bold = true })
set("PmenuThumb", { fg = c.primary_bg, bg = c.match })
set("WildMenu", { fg = c.primary_bg, bg = c.match })
set("Underlined", { fg = c.primary_fg, underline = true })

set("DiagnosticWarn", { fg = c.function_name, italic = true })
set("DiagnosticError", { fg = c.literal, italic = true })
set("DiagnosticHint", { fg = c.comment, italic = true })

-- Kind
local kind = {
  literal = {
    scheme = { fg = c.literal },
    group = {
      "Character",
      "Conditional",
      "Float",
      "Folded",
      "Keyword",
      "Number",
      "Statement",
      "String",
      "Tag",
      "WarningMsg",
      "Boolean",
    },
  },
  comment = {
    scheme = { fg = c.comment },
    group = {
      "Comment",
      "DiffDelete",
      "DiffRemoved",
      "LineNr",
      "NonText",
      "StatusLineNC",
      "TabLine",
    },
  },
  docs = {
    scheme = { bg = c.cursor_line },
    group = {
      "BlinkCmpDoc",
      "CursorLine",
    },
  },
  search = {
    scheme = { fg = c.match, bg = c.comment, bold = true },
    group = {
      "Search",
      "Pmenu",
      "IncSearch",
    },
  },
  func = {
    scheme = { fg = c.function_name },
    group = {
      "Function",
      "SpecialComment",
      "Title",
    },
  },
  delim = {
    scheme = { fg = c.primary_fg },
    group = {
      "Debug",
      "Delimiter",
      "Exception",
      "FoldColumn",
      "Identifier",
      "Macro",
      "ModeMsg",
      "MoreMsg",
      "Question",
      "VertSplit",
      "@constructor",
    }
  },
  match = {
    scheme = { fg = c.match },
    group = {
      "MatchParen",
    },
  },
  define = {
    scheme = { fg = c.primary_fg, bold = true },
    group = {
      "Define",
      "DiffAdd",
      "Directory",
      "DiffAdded",
      "DiffCommon",
      "Include",
      "Label",
      "Operator",
      "PreCondit",
      "PreProc",
      "Repeat",
      "Special",
      "SpecialChar",
      "StatusLine",
      "StorageClass",
      "Structure",
      "Todo",
      "Type",
      "Typedef",
    },
  },
  error = {
    scheme = { fg = c.primary_bg, bg = c.literal, bold = true },
    group = {
      "Error",
      "ErrorMsg",
      "SpellCap",
      "SpellLocal",
      "SpellBad",
      "DiffText",
    }
  },
  cursor = {
    scheme = { fg = c.primary_bg, bg = c.function_name },
    group = {
      "CursorColumn",
      "ColorColumn",
      "Cursor",  -- cursor color (ignored in terminal)
      "iCursor", -- cursor in insert mode (ignored in terminal)
    },
  },
  visual = {
    scheme = { fg = c.primary_bg, bg = c.match, bold = true },
    group = {
      "PmenuSbar",
      "PmenuSel",
      "Visual",
      "VisualNOS",
    },
  },
  special = {
    -- scheme = { fg = c.primary_bg, bg = c.match },
    scheme = { fg = c.primary_bg, bg = c.primary_fg, underline = True },
    group = {
      "SpecialKey",
    },
  },
  diff = {
    scheme = { fg = c.primary_bg, bg = c.match, bold = true },
    group = {
      "DiffChange",
      "DiffChanged",
    },
  },
}

for _, k in pairs(kind) do
  for _, g in ipairs(k.group) do
    set(g, k.scheme)
  end
end
