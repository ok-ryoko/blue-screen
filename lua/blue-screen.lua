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

  -- lsp
  hl("@lsp", {})
  hl("@lsp.type.class", { link = "Type" })
  hl("@lsp.type.comment", { link = "Comment" })
  hl("@lsp.type.decorator", { link = "Function" })
  hl("@lsp.type.enum", { link = "Type" })
  hl("@lsp.type.enumMember", { link = "Constant" })
  hl("@lsp.type.function", { link = "Function" })
  hl("@lsp.type.interface", { link = "Type" })
  hl("@lsp.type.macro", { link = "Macro" })
  hl("@lsp.type.method", { link = "Method" })
  hl("@lsp.type.namespace", { link = "Identifier" })
  hl("@lsp.type.parameter", { link = "Identifier" })
  hl("@lsp.type.property", { link = "Identifier" })
  hl("@lsp.type.struct", { link = "Structure" })
  hl("@lsp.type.type", { link = "Type" })
  hl("@lsp.type.typeParameter", { link = "Type" })
  hl("@lsp.type.variable", { link = "Identifier" })

  -- github.com/nvim-treesitter/nvim-treesitter
  hl("@attribute", { link = "PreProc" })
  hl("@attribute.builtin", { link = "@constant" })
  hl("@boolean", { link = "Boolean" })
  hl("@character", { link = "Character" })
  hl("@character.special", { link = "SpecialChar" })
  hl("@comment", { link = "Comment" })
  hl("@comment.documentation", { link = "@comment" })
  hl("@conceal", { link = "Conceal" })
  hl("@conditional", { link = "Conditional" })
  hl("@conditional.ternary", { link = "@conditional" })
  hl("@constant", { link = "Constant" })
  hl("@constant.builtin", { link = "@constant" })
  hl("@constant.macro", { link = "@constant" })
  hl("@constructor", { link = "Function" })
  hl("@debug", { link = "Debug" })
  hl("@define", { link = "Define" })
  hl("@error", {})
  hl("@exception", { link = "Exception" })
  hl("@field", { link = "Identifier" })
  hl("@float", { link = "Float" })
  hl("@function", { link = "Function" })
  hl("@function.builtin", { link = "@constant" })
  hl("@function.call", { link = "@function" })
  hl("@function.macro", { link = "Macro" })
  hl("@include", { link = "Include" })
  hl("@interface", { link = "Type" })
  hl("@keyword", { link = "Keyword" })
  hl("@label", { link = "Label" })
  hl("@method", { link = "Method" })
  hl("@method.call", { link = "@method" })
  hl("@namespace", { link = "Identifier" })
  hl("@namespace.builtin", { link = "@constant" })
  hl("@number", { link = "Number" })
  hl("@operator", { link = "Operator" })
  hl("@parameter", { link = "Identifier" })
  hl("@parameter.builtin", { link = "@constant" })
  hl("@preproc", { link = "PreProc" })
  hl("@property", { link = "Identifier" })
  hl("@punctuation", { link = "Delimiter" })
  hl("@regex", { link = "SpecialChar" })
  hl("@repeat", { link = "Repeat" })
  hl("@storageclass", { link = "StorageClass" })
  hl("@storageclass.lifetime", { link = "@storageclass" })
  hl("@string", { link = "String" })
  hl("@string.documentation", { link = "@string" })
  hl("@string.escape", { link = "SpecialChar" })
  hl("@string.regex", { link = "SpecialChar" })
  hl("@string.special", { link = "SpecialChar" })
  hl("@symbol", { link = "Identifier" })
  hl("@tag", { link = "Tag" })
  hl("@tag.attribute", { link = "Identifier" })
  hl("@tag.builtin", { link = "@constant" })
  hl("@tag.delimiter", { link = "Delimiter" })
  hl("@text", {})
  hl("@text.danger", { link = "ErrorMsg" })
  hl("@text.diff.add", { link = "DiffAdd" })
  hl("@text.diff.delete", { link = "DiffDelete" })
  hl("@text.emphasis", { link = "Italic" })
  hl("@text.environment", { link = "Comment" })
  hl("@text.environment.name", { link = "SpecialComment" })
  hl("@text.literal", { link = "String" })
  hl("@text.math", { link = "Special" })
  hl("@text.note", { fg = p.blue6 })
  hl("@text.quote", { link = "String" })
  hl("@text.reference", { link = "Identifier" })
  hl("@text.strike", { strikethrough = true })
  hl("@text.strong", { link = "Bold" })
  hl("@text.title", { link = "Title" })
  hl("@text.todo", { link = "Todo" })
  hl("@text.underline", { link = "Underlined" })
  hl("@text.uri", { link = "Underlined" })
  hl("@text.warning", { link = "WarningMsg" })
  hl("@type", { link = "Type" })
  hl("@type.builtin", { link = "@type" })
  hl("@type.definition", { link = "Typedef" })
  hl("@type.qualifier", { link = "@type" })
  hl("@variable", { link = "Identifier" })
  hl("@variable.builtin", { link = "Constant" })

  -- github.com/hrsh7th/nvim-cmp
  hl("CmpItemAbbr", { fg = p.blue6 })
  hl("CmpItemAbbrDeprecated", { fg = p.blue5 })
  hl("CmpItemAbbrMatch", { fg = p.blue8 })
  hl("CmpItemAbbrMatchFuzzy", { fg = p.blue7 })
  hl("CmpItemKind", { fg = p.blue5 })
  hl("CmpItemMenu", { fg = p.blue3 })

  -- github.com/lewis6991/gitsigns.nvim
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
