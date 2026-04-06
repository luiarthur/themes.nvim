-- Get help on each option in nvim by (e.g. help on SpellBad):
-- :hi SpellBad

vim.cmd("highlight clear")
vim.opt.termguicolors = true
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "noir"

-- Colors
local c = {
  black = "#0e1111", -- soft black
  maroon = "#944547",
  red = "#FF6961",   -- pastel red
  pink = "#DCAE96",  -- dusty rose
  darkgrey = "#3B3B3B",
  grey = "#696969",
  lightgrey = "#ADADAD",
  white = "#FFF5EE", -- soft white
}

local function set(group, options)
  vim.api.nvim_set_hl(0, group, options)
end

-- Special colors
set("Normal", { fg = c.lightgrey, bg = c.black })
set("SpellRare", { fg = c.maroon })
set("Constant", { fg = c.lightgrey })

set("CurSearch", { fg = c.black, bg = c.white, bold = true })
set("PmenuThumb", { fg = c.black, bg = c.white })
set("WildMenu", { fg = c.black, bg = c.white })
set("Underlined", { fg = c.lightgrey, underline = true })

set("DiagnosticWarn", { fg = c.pink, italic = true })
set("DiagnosticError", { fg = c.red, italic = true })
set("DiagnosticHint", { fg = c.grey, italic = true })

-- Kind
local kind = {
  literal = {
    scheme = { fg = c.red },
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
    scheme = { fg = c.grey },
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
  search = {
    scheme = { fg = c.white, bg = c.grey, bold = true },
    group = {
      "Search",
      "Pmenu",
      "IncSearch",
      "BlinkCmpDoc",
    },
  },
  func = {
    scheme = { fg = c.pink },
    group = {
      "Function",
      "SpecialComment",
      "Title",
    },
  },
  delim = {
    scheme = { fg = c.lightgrey },
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
  define = {
    scheme = { fg = c.white },
    group = {
      "Define",
      "DiffAdd",
      "Directory",
      "DiffAdded",
      "DiffCommon",
      "Include",
      "Label",
      "MatchParen",
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
    scheme = { fg = c.white, bg = c.maroon },
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
    scheme = { fg = c.black, bg = c.pink },
    group = {
      "Cursor",
      "CursorColumn",
    },
  },
  visual = {
    scheme = { fg = c.black, bg = c.white, bold = true },
    group = {
      "ColorColumn",
      "PmenuSbar",
      "PmenuSel",
      "Visual",
      "VisualNOS",
    },
  },
  special = {
    scheme = { fg = c.black, bg = c.white },
    group = {
      "SpecialKey",
      "iCursor",
    },
  },
  diff = {
    scheme = { fg = c.black, bg = c.white, bold = true },
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
