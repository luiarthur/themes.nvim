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
  set("Constant", { fg = c.primary_fg })

  set("PmenuThumb", { fg = c.primary_bg, bg = c.special })
  set("WildMenu", { fg = c.primary_bg, bg = c.special })
  set("Underlined", { fg = c.primary_fg, underline = true })

  set("DiagnosticWarn", { fg = c.function_name, italic = true })
  set("DiagnosticError", { fg = c.literal, italic = true })
  set("DiagnosticHint", { fg = c.comment, italic = true })

  set("CurSearch", {
    fg = c.primary_bg,
    bg = c.special,
    italic = true,
    bold = true
  })

  -- Kind
  local kind = {
    normal = {
      scheme = { fg = c.primary_fg, bg = c.primary_bg },
      group = {
        "Normal",
        "@variable",
      }
    },
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
        "Repeat",
        "pythonBoolean",
        "Identifier",
        "Include",
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
      scheme = { bg = c.visual },
      group = {
        "BlinkCmpDoc",
        "CursorLine",
        "CursorColumn",
        "ColorColumn",
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
        "@markup.list",
        "@markup.link.label",
        "@punctuation.special.markdown",
      },
    },
    delim = {
      scheme = { fg = c.primary_fg },
      group = {
        "Debug",
        "Delimiter",
        "Exception",
        "FoldColumn",
        "Macro",
        "ModeMsg",
        "MoreMsg",
        "Question",
        "VertSplit",
        "@constructor",
      }
    },
    alert = {
      scheme = { fg = c.special, bold = true },
      group = {
        "MatchParen",
        "@comment.error",
        "@comment.warning",
        "@comment.todo",
        "@comment.note",
        "@diff.delta",
        "DiffChange",
        "DiffChanged",
        "@markup.heading",
        "@markup.strong",
        "@comment.error",
        "@comment.warning",
        "@comment.todo",
        "@comment.note",
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
        "Label",
        "Operator",
        "PreCondit",
        "PreProc",
        "Special",
        "SpecialChar",
        "StatusLine",
        "StorageClass",
        "Structure",
        "Todo",
        "Type",
        "Typedef",
        "CursorLineNr",
      },
    },
    error = {
      scheme = { fg = c.primary_bg, bg = c.literal, bold = true },
      group = {
        "Error",
        "ErrorMsg",
      }
    },
    spell = {
      scheme = { fg = c.special, bg = c.literal, bold = true },
      group = {
        "SpellCap",
        "SpellRare",
        "SpellLocal",
        "SpellBad",
      }
    },
    cursor = {
      scheme = { fg = c.primary_bg, bg = c.function_name },
      group = {
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
    italic = {
      scheme = { fg = c.primary_fg, italic = true },
      group = {
        "@markup.italic",
        "@markup.quote",
        "@markup.math",
        "@markup.raw",
      },
    },
    underline = {
      scheme = { underline = true },
      group = {
        "@markup.link.url",
        "@markup.underline",
        "DiagnosticUnderlineWarn",
        "DiagnosticDeprecated",
        "DiffText",
      },
    },
    strikethrough = {
      scheme = { strikethrough = true },
      group = {
        "@markup.strikethrough",
        "DiagnosticUnnecessary",
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
