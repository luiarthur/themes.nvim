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
  carbon = "#161A1D", -- soft black
  darkgrey = "#3B3B3B",

  red = "#FF6961",  -- pastel red
  pink = "#DCAE96", -- dusty rose

  grey = "#696969",
  lightgrey = "#ADADAD",

  smoke = "#FFF5EE", -- soft white
}

local function set(group, options)
  vim.api.nvim_set_hl(0, group, options)
end

-- Special colors
set("Normal", { fg = c.lightgrey, bg = c.carbon })
set("SpellRare", { fg = c.red })
set("Constant", { fg = c.lightgrey })

set("CurSearch", { fg = c.carbon, bg = c.smoke, bold = true })
set("PmenuThumb", { fg = c.carbon, bg = c.smoke })
set("WildMenu", { fg = c.carbon, bg = c.smoke })
set("Underlined", { fg = c.lightgrey, underline = true })
set("CursorLine", { bg = c.darkgrey })

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
    scheme = { bg = c.grey, bold = true },
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
  match = {
    scheme = { fg = c.smoke },
    group = {
      "MatchParen",
    },
  },
  define = {
    scheme = { fg = c.lightgrey, bold = true },
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
    scheme = { fg = c.carbon, bg = c.red, bold = true },
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
    scheme = { fg = c.carbon, bg = c.pink },
    group = {
      "CursorColumn",
      "ColorColumn",
      "Cursor",  -- cursor color (ignored in terminal)
      "iCursor", -- cursor in insert mode (ignored in terminal)
    },
  },
  visual = {
    scheme = { fg = c.carbon, bg = c.smoke, bold = true },
    group = {
      "PmenuSbar",
      "PmenuSel",
      "Visual",
      "VisualNOS",
    },
  },
  special = {
    scheme = { fg = c.carbon, bg = c.smoke },
    group = {
      "SpecialKey",
    },
  },
  diff = {
    scheme = { fg = c.carbon, bg = c.smoke, bold = true },
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
