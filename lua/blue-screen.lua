local function hl(group, color)
  local fg = color.fg or "NONE"
  local bg = color.bg or "NONE"
  local sp = color.sp or ""
  color = vim.tbl_extend("force", color, { fg = fg, bg = bg, sp = sp })
  vim.api.nvim_set_hl(0, group, color)
end

local M = {}

function M.palette()
  return {
    blue0 = "#00014c",
    blue1 = "#232440",
    blue2 = "#3b3c53",
    blue3 = "#545569",
    blue4 = "#6e6f81",
    blue5 = "#8a8a9b",
    blue6 = "#a6a6b6",
    blue7 = "#c3c3d1",
    blue8 = "#e1e1ee",

    black = "#1b1b1b",
    bright_black = "#464646",
    pink = "#d07589",
    bright_pink = "#ffa1bc",
    green = "#629f49",
    bright_green = "#89da67",
    orange = "#b08b38",
    bright_orange = "#f0bf50",
    azure = "#4e97cb",
    bright_azure = "#6dcfff",
    violet = "#b978c6",
    bright_violet = "#fda6ff",
    cyan = "#00a697",
    bright_cyan = "#00e3cf",
    white = "#c6c6c6",
    bright_white = "#ffffff",

    error_red = "#ff5555",
    warning_yellow = "#ffff55",
  }
end

function M.load_colors()
  local p = M.palette()

  -- terminal
  vim.g.terminal_color_0 = p.black
  vim.g.terminal_color_1 = p.pink
  vim.g.terminal_color_2 = p.green
  vim.g.terminal_color_3 = p.orange
  vim.g.terminal_color_4 = p.azure
  vim.g.terminal_color_5 = p.violet
  vim.g.terminal_color_6 = p.cyan
  vim.g.terminal_color_7 = p.white
  vim.g.terminal_color_8 = p.bright_black
  vim.g.terminal_color_9 = p.bright_pink
  vim.g.terminal_color_10 = p.bright_green
  vim.g.terminal_color_11 = p.bright_orange
  vim.g.terminal_color_12 = p.bright_azure
  vim.g.terminal_color_13 = p.bright_violet
  vim.g.terminal_color_14 = p.bright_cyan
  vim.g.terminal_color_15 = p.bright_white

  -- editor
  hl("ColorColumn", { bg = p.blue2 })
  hl("Conceal", { fg = p.blue7 })
  hl("CurSearch", { link = "IncSearch" })
  hl("Cursor", { fg = p.blue0, bg = p.blue8 })
  hl("CursorColumn", { bg = p.blue2 })
  hl("CursorIM", { fg = p.blue0, bg = p.blue8 })
  hl("CursorLine", { underline = true, sp = p.blue3 })
  hl("CursorLineNr", { fg = p.blue8 })
  hl("DiffAdd", { fg = p.bright_pink })
  hl("DiffChange", { fg = p.bright_orange })
  hl("DiffDelete", { fg = p.bright_azure })
  hl("DiffText", { fg = p.blue6 })
  hl("Directory", { bold = true })
  hl("EndOfBuffer", { fg = p.blue3 })
  hl("ErrorMsg", { fg = p.error_red })
  hl("FoldColumn", { fg = p.blue3 })
  hl("Folded", { fg = p.blue5, bg = p.blue1 })
  hl("IncSearch", { link = "Search" })
  hl("lCursor", { fg = p.blue0, bg = p.blue8 })
  hl("LineNr", { fg = p.blue3 })
  hl("MatchParen", { bg = p.blue2 })
  hl("ModeMsg", { fg = p.blue6 })
  hl("MoreMsg", { fg = p.blue6, italic = true })
  hl("MsgArea", { fg = p.blue6 })
  hl("MsgSeparator", { link = "StatusLine" })
  hl("NonText", { fg = p.blue5 })
  hl("Normal", { fg = p.blue6, bg = p.blue0 })
  hl("NormalFloat", { bg = p.blue2 })
  hl("NvimInternalError", { fg = p.blue0, bg = p.error_red })
  hl("Pmenu", { fg = p.blue6, bg = p.blue3 })
  hl("PmenuSbar", { fg = p.blue6, bg = p.blue4 })
  hl("PmenuSel", { fg = p.blue7, bg = p.blue4 })
  hl("PmenuThumb", { bg = p.blue5 })
  hl("Question", { fg = p.blue6, italic = true })
  hl("QuickFixLine", { reverse = true })
  hl("RedrawDebugClear", { fg = p.blue0, bg = p.bright_pink })
  hl("RedrawDebugComposed", { fg = p.blue0, bg = p.bright_orange })
  hl("RedrawDebugNormal", { reverse = true })
  hl("RedrawDebugRecompose", { fg = p.blue0, bg = p.bright_azure })
  hl("Search", { reverse = true })
  hl("SignColumn", { fg = p.blue5, bg = p.blue0 })
  hl("SpecialKey", { link = "Special" })
  hl("SpellBad", { undercurl = true, sp = p.error_red })
  hl("SpellCap", { undercurl = true, sp = p.bright_azure })
  hl("SpellLocal", { undercurl = true, sp = p.bright_cyan })
  hl("SpellRare", { undercurl = true, sp = p.bright_violet })
  hl("StatusLine", { fg = p.blue6, bg = p.blue1 })
  hl("StatusLineNC", { fg = p.blue3, bg = p.blue0 })
  hl("Substitute", { reverse = true })
  hl("TabLine", { fg = p.blue6, bg = p.blue1 })
  hl("TabLineFill", { link = "StatusLine" })
  hl("TabLineSel", { fg = p.blue1, bg = p.blue6 })
  hl("Title", { bold = true })
  hl("VertSplit", { fg = p.blue2 })
  hl("Visual", { bg = p.blue2 })
  hl("VisualNOS", { link = "Visual" })
  hl("WarningMsg", { fg = p.warning_yellow })
  hl("Whitespace", { fg = p.blue2 })
  hl("WildMenu", { bg = p.blue2 })
  hl("WinBar", { bold = true })
  hl("WinSeparator", { fg = p.blue2 })

  -- diagnostics
  hl("DiagnosticDeprecated", { strikethrough = true })
  hl("DiagnosticError", { fg = p.error_red })
  hl("DiagnosticHint", { fg = p.blue6 })
  hl("DiagnosticInfo", { fg = p.blue6 })
  hl("DiagnosticOk", { fg = p.bright_green })
  hl("DiagnosticUnderlineError", { undercurl = true, sp = p.error_red })
  hl("DiagnosticUnderlineHint", { undercurl = true, sp = p.blue6 })
  hl("DiagnosticUnderlineInfo", { undercurl = true, sp = p.blue6 })
  hl("DiagnosticUnderlineOk", { undercurl = true, sp = p.bright_green })
  hl("DiagnosticUnderlineWarn", { undercurl = true, sp = p.warning_yellow })
  hl("DiagnosticUnnecessary", { fg = p.blue3 })
  hl("DiagnosticWarn", { fg = p.warning_yellow })

  -- syntax
  hl("Bold", { bold = true })
  hl("Boolean", { link = "Constant" })
  hl("Character", { link = "Constant" })
  hl("Comment", { fg = p.blue3 })
  hl("Conditional", { link = "Statement" })
  hl("Constant", { fg = p.blue8 })
  hl("Debug", { link = "Special" })
  hl("Define", { link = "PreProc" })
  hl("Delimiter", { link = "Special" })
  hl("Error", { fg = p.error_red, bold = true })
  hl("Exception", { link = "Statement" })
  hl("Float", { link = "Constant" })
  hl("Function", { fg = p.blue7 })
  hl("Identifier", { fg = p.blue5 })
  hl("Ignore", {})
  hl("Include", { link = "PreProc" })
  hl("Italic", { italic = true })
  hl("Keyword", { link = "Statement" })
  hl("Label", { link = "Statement" })
  hl("Macro", { link = "PreProc" })
  hl("Number", { link = "Constant" })
  hl("Operator", { link = "Statement" })
  hl("PreCondit", { link = "PreProc" })
  hl("PreProc", { fg = p.blue6 })
  hl("Repeat", { link = "Statement" })
  hl("Special", { fg = p.blue8 })
  hl("SpecialChar", { link = "Special" })
  hl("SpecialComment", { fg = p.blue5 })
  hl("Statement", { fg = p.blue8 })
  hl("StorageClass", { link = "Type" })
  hl("String", { fg = p.blue6 })
  hl("Structure", { link = "Type" })
  hl("Tag", { link = "Special" })
  hl("Todo", { fg = p.blue5 })
  hl("Type", { fg = p.blue6, italic = true })
  hl("Typedef", { link = "Type" })
  hl("Underlined", { underline = true })

  -- syntax/diff.vim
  hl("diffAdded", { link = "DiffAdd" })
  hl("diffChanged", { link = "DiffChange" })
  hl("diffFile", { link = "Statement" })
  hl("diffNewFile", { link = "DiffAdd" })
  hl("diffOldFile", { link = "DiffDelete" })
  hl("diffRemoved", { link = "DiffDelete" })

  -- github.com/nvim-treesitter/nvim-treesitter/commit/f84887230af1f7581e29ccd5d93f59d98058d565
  hl("@attribute", { fg = p.blue7 })
  hl("@attribute.builtin", { link = "Special" })
  hl("@boolean", { link = "Boolean" })
  hl("@character", { link = "Character" })
  hl("@character.special", { link = "SpecialChar" })
  hl("@comment", { link = "Comment" })
  hl("@comment.documentation", { link = "@comment" })
  hl("@comment.error", { link = "ErrorMsg" })
  hl("@comment.error.gitcommit", { link = "@comment.error" })
  hl("@comment.note", { link = "SpecialComment" })
  hl("@comment.todo", { link = "SpecialComment" })
  hl("@comment.warning", { link = "WarningMsg" })
  hl("@conceal", { link = "Conceal" })
  hl("@constant", { link = "Constant" })
  hl("@constant.builtin", { link = "Special" })
  hl("@constant.macro", { link = "@constant" })
  hl("@constructor", { link = "@function" })
  hl("@diff.delta", { link = "DiffChange" })
  hl("@diff.minus", { link = "DiffDelete" })
  hl("@diff.plus", { link = "DiffAdd" })
  hl("@function", { link = "Function" })
  hl("@function.builtin", { link = "Special" })
  hl("@function.call", { link = "@function" })
  hl("@function.macro", { link = "Macro" })
  hl("@function.method", { link = "@function" })
  hl("@function.method.call", { link = "@function.method" })
  hl("@keyword", { link = "Keyword" })
  hl("@keyword.conditional", { link = "Conditional" })
  hl("@keyword.conditional.ternary", { link = "@keyword.conditional" })
  hl("@keyword.coroutine", { link = "@keyword" })
  hl("@keyword.debug", { link = "Debug" })
  hl("@keyword.directive", { link = "PreProc" })
  hl("@keyword.directive.define", { link = "Define" })
  hl("@keyword.exception", { link = "Exception" })
  hl("@keyword.function", { link = "@keyword" })
  hl("@keyword.import", { link = "@keyword" })
  hl("@keyword.import.c", { link = "Include" })
  hl("@keyword.import.cpp", { link = "Include" })
  hl("@keyword.import.zig", { link = "@function.builtin" })
  hl("@keyword.modifier", { link = "StorageClass" })
  hl("@keyword.operator", { link = "@operator" })
  hl("@keyword.repeat", { link = "Repeat" })
  hl("@keyword.return", { link = "@keyword" })
  hl("@keyword.type", { link = "@keyword" })
  hl("@label", { link = "Label" })
  hl("@markup.heading", { link = "Title" })
  hl("@markup.heading.gitcommit", { link = "@markup.heading" })
  hl("@markup.italic", { link = "Italic" })
  hl("@markup.link", { link = "Tag" })
  hl("@markup.link.label", { link = "@markup.link" })
  hl("@markup.link.url", { link = "Underlined" })
  hl("@markup.list", { link = "Special" })
  hl("@markup.list.checked", { fg = p.blue7 })
  hl("@markup.list.unchecked", { fg = p.blue5 })
  hl("@markup.math", { link = "Special" })
  hl("@markup.quote", { fg = p.blue5 })
  hl("@markup.raw", { fg = p.blue7 })
  hl("@markup.raw.block", { link = "@markup.raw" })
  hl("@markup.strikethrough", { strikethrough = true })
  hl("@markup.strong", { link = "Bold" })
  hl("@markup.underline", { link = "Underlined" })
  hl("@module", { link = "Identifier" })
  hl("@module.builtin", { link = "Special" })
  hl("@number", { link = "Number" })
  hl("@number.float", { link = "Float" })
  hl("@operator", { link = "Operator" })
  hl("@property", { link = "Identifier" })
  hl("@punctuation.bracket", { link = "Delimiter" })
  hl("@punctuation.delimiter", { link = "Delimiter" })
  hl("@punctuation.special", { link = "Delimiter" })
  hl("@string", { link = "String" })
  hl("@string.documentation", { link = "@string" })
  hl("@string.escape", { link = "SpecialChar" })
  hl("@string.regexp", { link = "@string.special" })
  hl("@string.special", { link = "Special" })
  hl("@string.special.path", { link = "Italic" })
  hl("@string.special.symbol", { link = "@string.special" })
  hl("@string.special.url", { link = "Underlined" })
  hl("@string.special.url.gitcommit", { link = "@string.special.url" })
  hl("@tag", { fg = p.blue7 })
  hl("@tag.attribute", { link = "@property" })
  hl("@tag.builtin", { link = "Special" })
  hl("@tag.delimiter", { link = "Delimiter" })
  hl("@type", { link = "Type" })
  hl("@type.builtin", { link = "@type" })
  hl("@type.definition", { link = "Typedef" })
  hl("@variable", { link = "Identifier" })
  hl("@variable.builtin", { link = "Special" })
  hl("@variable.member", { link = "@variable" })
  hl("@variable.parameter", { link = "@variable" })
  hl("@variable.parameter.builtin", { link = "Special" })

  -- lsp v3.17
  hl("@lsp.mod.deprecated", { strikethrough = true })
  hl("@lsp.type.class", { link = "@type" })
  hl("@lsp.type.comment", { link = "@comment" })
  hl("@lsp.type.decorator", { link = "@attribute" })
  hl("@lsp.type.enum", { link = "@type" })
  hl("@lsp.type.enumMember", { link = "@constant" })
  hl("@lsp.type.event", { link = "@property" })
  hl("@lsp.type.function", { link = "@function" })
  hl("@lsp.type.interface", { link = "@type" })
  hl("@lsp.type.keyword", { link = "@keyword" })
  hl("@lsp.type.macro", { link = "Macro" })
  hl("@lsp.type.method", { link = "@function" })
  hl("@lsp.type.modifier", { link = "@keyword.modifier" })
  hl("@lsp.type.namespace", { link = "@module" })
  hl("@lsp.type.number", { link = "@number" })
  hl("@lsp.type.operator", { link = "@operator" })
  hl("@lsp.type.parameter", { link = "@variable.parameter" })
  hl("@lsp.type.property", { link = "@property" })
  hl("@lsp.type.regexp", { link = "@string.regexp" })
  hl("@lsp.type.string", { link = "@string" })
  hl("@lsp.type.struct", { link = "@type" })
  hl("@lsp.type.type", { link = "@type" })
  hl("@lsp.type.typeParameter", { link = "@type.definition" })
  hl("@lsp.type.variable", { link = "@variable" })

  -- github.com/hrsh7th/nvim-cmp/commit/97dc716fc914c46577a4f254035ebef1aa72558a
  hl("CmpItemAbbr", { fg = p.blue6 })
  hl("CmpItemAbbrDeprecated", { fg = p.blue5 })
  hl("CmpItemAbbrMatch", { fg = p.blue8 })
  hl("CmpItemAbbrMatchFuzzy", { fg = p.blue7 })
  hl("CmpItemKind", { fg = p.blue5 })
  hl("CmpItemMenu", { fg = p.blue3 })

  -- github.com/lewis6991/gitsigns.nvim/commit/70584ff9aae8078b64430c574079d79620b8f06d
  hl("GitSignsAdd", { fg = p.bright_pink })
  hl("GitSignsAddInline", { fg = p.blue0, bg = p.bright_pink })
  hl("GitSignsChange", { fg = p.bright_orange })
  hl("GitSignsChangeInline", { fg = p.blue0, bg = p.bright_orange })
  hl("GitSignsDelete", { fg = p.bright_azure })
  hl("GitSignsDeleteInline", { fg = p.blue0, bg = p.bright_azure })
  hl("GitSignsStagedAdd", { fg = p.pink })
  hl("GitSignsStagedAddLn", { link = "GitSignsStagedAdd" })
  hl("GitSignsStagedAddNr", { link = "GitSignsStagedAdd" })
  hl("GitSignsStagedChange", { fg = p.orange })
  hl("GitSignsStagedChangedelete", { link = "GitSignsStagedChange" })
  hl("GitSignsStagedChangedeleteLn", { link = "GitSignsStagedChange" })
  hl("GitSignsStagedChangedeleteNr", { link = "GitSignsStagedChange" })
  hl("GitSignsStagedChangeLn", { link = "GitSignsStagedChange" })
  hl("GitSignsStagedChangeNr", { link = "GitSignsStagedChange" })
  hl("GitSignsStagedDelete", { fg = p.azure })
  hl("GitSignsStagedDeleteNr", { link = "GitSignsStagedDelete" })
  hl("GitSignsStagedTopdelete", { link = "GitSignsStagedDelete" })
  hl("GitSignsStagedTopdeleteNr", { link = "GitSignsStagedDelete" })
end

function M.setup()
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  vim.g.colors_name = "blue-screen"

  if vim.g.syntax_on ~= nil then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true

  M.load_colors()
end

return M
