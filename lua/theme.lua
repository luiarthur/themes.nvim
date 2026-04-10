local M = {}

function M.run(color_scheme_name, c)
  vim.cmd("highlight clear")
  vim.opt.termguicolors = true
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = color_scheme_name

  local function set(group, options)
    vim.api.nvim_set_hl(0, group, options)
  end

  -- Special colors
  set("Normal", { fg = c.primary_fg, bg = c.primary_bg })
  set("SpellRare", { fg = c.literal })
  set("Constant", { fg = c.primary_fg })

  set("CurSearch", { fg = c.primary_bg, bg = c.special, bold = true })
  set("PmenuThumb", { fg = c.primary_bg, bg = c.special })
  set("WildMenu", { fg = c.primary_bg, bg = c.special })
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
    visual = {
      scheme = { bg = c.cursor_line },
      group = {
        "BlinkCmpDoc",
        "CursorLine",
        "Visual",
      },
    },
    search = {
      scheme = { fg = c.special, bg = c.comment, bold = true },
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
      scheme = { fg = c.special },
      group = {
        "MatchParen",
      },
    },
    define = {
      scheme = { fg = c.special },
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
    menu = {
      scheme = { fg = c.primary_bg, bg = c.special, bold = true },
      group = {
        "PmenuSbar",
        "PmenuSel",
        "VisualNOS",
      },
    },
    special = {
      scheme = { fg = c.primary_bg, bg = c.primary_fg, bold = true },
      group = {
        "SpecialKey",
      },
    },
    diff = {
      scheme = { fg = c.primary_bg, bg = c.special, bold = true },
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
end

return M
