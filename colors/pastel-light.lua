-- Pastel Light colorscheme
-- Background: #fcf9f2 (warm cream)
-- Text: near-black gray
-- Highlights use pastel backgrounds instead of colored text

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "pastel-light"

local colors = {
  bg = "#fcf9f2",
  fg = "#2d2d2d",

  -- Pastel backgrounds
  blue = "#a8d4f0",
  green = "#b8e6c1",
  yellow = "#f5e6a3",
  red = "#f0b8b8",
  purple = "#d4b8f0",
  cyan = "#a8e6e6",
  orange = "#f5cfa3",
  pink = "#f0c8d8",

  -- UI colors
  gray_light = "#e8e4dd",
  gray_mid = "#c0bab0",
  gray_dark = "#6e6e6e",

  -- Darker variants for some UI elements
  blue_dark = "#5a9bc7",
  green_dark = "#6ab07a",
  red_dark = "#c87070",
  purple_dark = "#9a7ac0",
}

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor UI
hl("Normal", { fg = colors.fg, bg = colors.bg })
hl("NormalFloat", { fg = colors.fg, bg = colors.gray_light })
hl("FloatBorder", { fg = colors.gray_mid, bg = colors.gray_light })
hl("Cursor", { fg = colors.bg, bg = colors.fg })
hl("CursorLine", { bg = "#f5f2eb" })
hl("CursorColumn", { bg = "#f5f2eb" })
hl("LineNr", { fg = colors.gray_mid })
hl("CursorLineNr", { fg = colors.fg, bold = true })
hl("SignColumn", { bg = colors.bg })
hl("VertSplit", { fg = colors.gray_light })
hl("WinSeparator", { fg = colors.gray_light })
hl("StatusLine", { fg = colors.fg, bg = colors.gray_light })
hl("StatusLineNC", { fg = colors.gray_dark, bg = colors.gray_light })
hl("TabLine", { fg = colors.gray_dark, bg = colors.gray_light })
hl("TabLineFill", { bg = colors.gray_light })
hl("TabLineSel", { fg = colors.fg, bg = colors.bg, bold = true })
hl("Pmenu", { fg = colors.fg, bg = colors.gray_light })
hl("PmenuSel", { fg = colors.fg, bg = colors.blue })
hl("PmenuSbar", { bg = colors.gray_light })
hl("PmenuThumb", { bg = colors.gray_mid })
hl("WildMenu", { fg = colors.fg, bg = colors.blue })
hl("Folded", { fg = colors.gray_dark, bg = colors.gray_light })
hl("FoldColumn", { fg = colors.gray_mid, bg = colors.bg })
hl("ColorColumn", { bg = "#f5f2eb" })
hl("MatchParen", { bg = colors.yellow, bold = true })
hl("NonText", { fg = colors.gray_mid })
hl("SpecialKey", { fg = colors.gray_mid })
hl("Visual", { bg = colors.blue })
hl("VisualNOS", { bg = colors.blue })
hl("Search", { bg = colors.yellow })
hl("IncSearch", { bg = colors.orange })
hl("CurSearch", { bg = colors.orange })
hl("Substitute", { bg = colors.red })
hl("QuickFixLine", { bg = colors.blue })
hl("Directory", { fg = colors.blue_dark })
hl("Title", { fg = colors.fg, bold = true })
hl("ErrorMsg", { fg = colors.fg, bg = colors.red })
hl("WarningMsg", { fg = colors.fg, bg = colors.yellow })
hl("ModeMsg", { fg = colors.fg, bold = true })
hl("MoreMsg", { fg = colors.green_dark })
hl("Question", { fg = colors.green_dark })

-- Diff
hl("DiffAdd", { bg = colors.green })
hl("DiffChange", { bg = colors.blue })
hl("DiffDelete", { bg = colors.red })
hl("DiffText", { bg = colors.cyan })

-- Spell
hl("SpellBad", { sp = colors.red_dark, undercurl = true })
hl("SpellCap", { sp = colors.blue_dark, undercurl = true })
hl("SpellLocal", { sp = colors.cyan, undercurl = true })
hl("SpellRare", { sp = colors.purple_dark, undercurl = true })

-- Syntax (using background colors for highlighting)
hl("Comment", { fg = colors.gray_dark, italic = true })
hl("Constant", { fg = colors.fg, bg = colors.cyan })
hl("String", { fg = colors.fg, bg = colors.green })
hl("Character", { fg = colors.fg, bg = colors.green })
hl("Number", { fg = colors.fg, bg = colors.orange })
hl("Boolean", { fg = colors.fg, bg = colors.orange })
hl("Float", { fg = colors.fg, bg = colors.orange })
hl("Identifier", { fg = colors.fg })
hl("Function", { fg = colors.fg, bg = colors.purple })
hl("Statement", { fg = colors.fg, bg = colors.blue })
hl("Conditional", { fg = colors.fg, bg = colors.blue })
hl("Repeat", { fg = colors.fg, bg = colors.blue })
hl("Label", { fg = colors.fg, bg = colors.blue })
hl("Operator", { fg = colors.blue_dark })
hl("Keyword", { fg = colors.fg, bg = colors.blue })
hl("Exception", { fg = colors.fg, bg = colors.red })
hl("PreProc", { fg = colors.fg, bg = colors.pink })
hl("Include", { fg = colors.fg, bg = colors.pink })
hl("Define", { fg = colors.fg, bg = colors.pink })
hl("Macro", { fg = colors.fg, bg = colors.pink })
hl("PreCondit", { fg = colors.fg, bg = colors.pink })
hl("Type", { fg = colors.fg, bg = colors.cyan })
hl("StorageClass", { fg = colors.fg, bg = colors.cyan })
hl("Structure", { fg = colors.fg, bg = colors.cyan })
hl("Typedef", { fg = colors.fg, bg = colors.cyan })
hl("Special", { fg = colors.fg, bg = colors.yellow })
hl("SpecialChar", { fg = colors.fg, bg = colors.yellow })
hl("Tag", { fg = colors.fg, bg = colors.blue })
hl("Delimiter", { fg = colors.fg })
hl("SpecialComment", { fg = colors.gray_dark, bg = colors.gray_light, italic = true })
hl("Debug", { fg = colors.fg, bg = colors.red })
hl("Underlined", { fg = colors.blue_dark, underline = true })
hl("Ignore", { fg = colors.gray_mid })
hl("Error", { fg = colors.fg, bg = colors.red })
hl("Todo", { fg = colors.fg, bg = colors.yellow, bold = true })

-- Treesitter
hl("@variable", { fg = colors.fg })
hl("@variable.builtin", { fg = colors.fg, bg = colors.cyan })
hl("@variable.parameter", { fg = colors.fg, italic = true })
hl("@variable.member", { fg = colors.fg })
hl("@constant", { fg = colors.fg, bg = colors.cyan })
hl("@constant.builtin", { fg = colors.fg, bg = colors.orange })
hl("@constant.macro", { fg = colors.fg, bg = colors.pink })
hl("@module", { fg = colors.fg })
hl("@label", { fg = colors.fg, bg = colors.blue })
hl("@string", { fg = colors.fg, bg = colors.green })
hl("@string.escape", { fg = colors.fg, bg = colors.yellow })
hl("@string.regexp", { fg = colors.fg, bg = colors.orange })
hl("@string.special", { fg = colors.fg, bg = colors.yellow })
hl("@character", { fg = colors.fg, bg = colors.green })
hl("@boolean", { fg = colors.fg, bg = colors.orange })
hl("@number", { fg = colors.fg, bg = colors.orange })
hl("@number.float", { fg = colors.fg, bg = colors.orange })
hl("@type", { fg = colors.fg, bg = colors.cyan })
hl("@type.builtin", { fg = colors.fg, bg = colors.cyan })
hl("@type.definition", { fg = colors.fg, bg = colors.cyan })
hl("@attribute", { fg = colors.fg, bg = colors.pink })
hl("@property", { fg = colors.fg })
hl("@function", { fg = colors.fg, bg = colors.purple })
hl("@function.builtin", { fg = colors.fg, bg = colors.purple })
hl("@function.macro", { fg = colors.fg, bg = colors.pink })
hl("@function.method", { fg = colors.fg, bg = colors.purple })
hl("@constructor", { fg = colors.fg, bg = colors.purple })
hl("@operator", { fg = colors.blue_dark })
hl("@keyword", { fg = colors.fg, bg = colors.blue })
hl("@keyword.modifier", { fg = colors.fg, bg = colors.blue })
hl("@keyword.type", { fg = colors.fg, bg = colors.cyan })
hl("@keyword.coroutine", { fg = colors.fg, bg = colors.blue })
hl("@keyword.function", { fg = colors.fg, bg = colors.blue })
hl("@keyword.operator", { fg = colors.fg, bg = colors.blue })
hl("@keyword.import", { fg = colors.fg, bg = colors.pink })
hl("@keyword.repeat", { fg = colors.fg, bg = colors.blue })
hl("@keyword.return", { fg = colors.fg, bg = colors.blue })
hl("@keyword.exception", { fg = colors.fg, bg = colors.red })
hl("@keyword.conditional", { fg = colors.fg, bg = colors.blue })
hl("@punctuation", { fg = colors.fg })
hl("@punctuation.delimiter", { fg = colors.fg })
hl("@punctuation.bracket", { fg = colors.fg })
hl("@punctuation.special", { fg = colors.fg })
hl("@comment", { fg = colors.gray_dark, italic = true })
hl("@comment.todo", { fg = colors.fg, bg = colors.yellow, bold = true })
hl("@comment.note", { fg = colors.fg, bg = colors.blue, bold = true })
hl("@comment.warning", { fg = colors.fg, bg = colors.orange, bold = true })
hl("@comment.error", { fg = colors.fg, bg = colors.red, bold = true })
hl("@markup.heading", { fg = colors.fg, bg = colors.blue, bold = true })
hl("@markup.strong", { bold = true })
hl("@markup.italic", { italic = true })
hl("@markup.strikethrough", { strikethrough = true })
hl("@markup.underline", { underline = true })
hl("@markup.quote", { fg = colors.gray_dark, italic = true })
hl("@markup.math", { fg = colors.fg, bg = colors.cyan })
hl("@markup.link", { fg = colors.blue_dark, underline = true })
hl("@markup.link.url", { fg = colors.blue_dark, underline = true })
hl("@markup.raw", { fg = colors.fg, bg = colors.gray_light })
hl("@markup.list", { fg = colors.fg })
hl("@tag", { fg = colors.fg, bg = colors.blue })
hl("@tag.attribute", { fg = colors.fg, bg = colors.purple })
hl("@tag.delimiter", { fg = colors.fg })

-- LSP Semantic Tokens
hl("@lsp.type.class", { fg = colors.fg, bg = colors.cyan })
hl("@lsp.type.decorator", { fg = colors.fg, bg = colors.pink })
hl("@lsp.type.enum", { fg = colors.fg, bg = colors.cyan })
hl("@lsp.type.enumMember", { fg = colors.fg, bg = colors.orange })
hl("@lsp.type.function", { fg = colors.fg, bg = colors.purple })
hl("@lsp.type.interface", { fg = colors.fg, bg = colors.cyan })
hl("@lsp.type.macro", { fg = colors.fg, bg = colors.pink })
hl("@lsp.type.method", { fg = colors.fg, bg = colors.purple })
hl("@lsp.type.namespace", { fg = colors.fg })
hl("@lsp.type.parameter", { fg = colors.fg, italic = true })
hl("@lsp.type.property", { fg = colors.fg })
hl("@lsp.type.struct", { fg = colors.fg, bg = colors.cyan })
hl("@lsp.type.type", { fg = colors.fg, bg = colors.cyan })
hl("@lsp.type.typeParameter", { fg = colors.fg, bg = colors.cyan })
hl("@lsp.type.variable", { fg = colors.fg })

-- Diagnostics
hl("DiagnosticError", { fg = colors.red_dark })
hl("DiagnosticWarn", { fg = colors.orange })
hl("DiagnosticInfo", { fg = colors.blue_dark })
hl("DiagnosticHint", { fg = colors.green_dark })
hl("DiagnosticUnderlineError", { sp = colors.red_dark, undercurl = true })
hl("DiagnosticUnderlineWarn", { sp = colors.orange, undercurl = true })
hl("DiagnosticUnderlineInfo", { sp = colors.blue_dark, undercurl = true })
hl("DiagnosticUnderlineHint", { sp = colors.green_dark, undercurl = true })

-- Git signs
hl("GitSignsAdd", { fg = colors.green_dark })
hl("GitSignsChange", { fg = colors.blue_dark })
hl("GitSignsDelete", { fg = colors.red_dark })

-- Telescope
hl("TelescopeBorder", { fg = colors.gray_mid })
hl("TelescopePromptBorder", { fg = colors.gray_mid })
hl("TelescopeResultsBorder", { fg = colors.gray_mid })
hl("TelescopePreviewBorder", { fg = colors.gray_mid })
hl("TelescopeSelection", { bg = colors.blue })
hl("TelescopeMatching", { bg = colors.yellow })

-- Bufferline
hl("BufferLineFill", { bg = colors.gray_light })
hl("BufferLineBackground", { fg = colors.gray_dark, bg = colors.gray_light })
hl("BufferLineBufferSelected", { fg = colors.fg, bg = colors.bg, bold = true })
hl("BufferLineBufferVisible", { fg = colors.gray_dark, bg = colors.gray_light })

-- Blink.cmp
hl("BlinkCmpMenu", { fg = colors.fg, bg = colors.gray_light })
hl("BlinkCmpMenuBorder", { fg = colors.gray_mid, bg = colors.gray_light })
hl("BlinkCmpMenuSelection", { bg = colors.blue })
hl("BlinkCmpLabel", { fg = colors.fg })
hl("BlinkCmpLabelMatch", { bg = colors.yellow })
hl("BlinkCmpKind", { fg = colors.gray_dark })
hl("BlinkCmpDoc", { fg = colors.fg, bg = colors.gray_light })
hl("BlinkCmpDocBorder", { fg = colors.gray_mid, bg = colors.gray_light })

-- ReScript
hl("resEncl", { fg = colors.fg })
hl("resModuleChain", { fg = colors.fg })
