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

  set("DiagnosticWarn", { fg = c.function_name, italic = true })
  set("DiagnosticError", { fg = c.literal, italic = true })
  set("DiagnosticHint", { fg = c.comment, italic = true })

  -- Kind
  local kind = {
    normal = {
      scheme = { fg = c.primary_fg, bg = c.primary_bg },
      group = {
        "Normal",
        "@variable",
        "@attribute",
        "@property",
      }
    },
    literal = {
      scheme = { fg = c.literal },
      group = {
        "@constant",
        "@string",
        "@character",
        "@boolean",
        "@number",
        "@diff.minus",
        "@tag",
        "@lsp.type.selfParameter",
        "@module",
        "@label",
      },
    },
    comment = {
      scheme = { fg = c.function_name },
      group = {
        "@comment",
        "@comment.documentation",
      },
    },
    delim = {
      scheme = { fg = c.special },
      group = {
        "@punctuation",
      },
    },
    func = {
      scheme = { fg = c.function_name },
      group = {
        "@function",
        "@constructor",
        "@operator",
        "@diff.plus",
      },
    },
    special = {
      scheme = { fg = c.special, bold = true },
      group = {
        "@keyword",
        "@type",
        "@comment.error",
        "@comment.warning",
        "@comment.todo",
        "@comment.note",
        "@diff.delta",
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
