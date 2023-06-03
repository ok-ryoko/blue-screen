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
    blue05 = "#00014c",
    blue15 = "#212241",
    blue25 = "#383952",
    blue35 = "#4f5068",
    blue45 = "#68687f",
    blue55 = "#818296",
    blue65 = "#9b9caf",
    blue75 = "#b6b7c8",
    blue85 = "#d2d3e2",
    blue95 = "#efeffc",

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
    bright_white = "#feffff",

    error_red = "#ff5555",
    warning_yellow = "#ffff55",
  }
end

function M.load_colors()
  local p = M.palette()

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
  hl("ColorColumn", { bg = p.blue25 })
  hl("Comment", { fg = p.blue35 })
  hl("Conceal", { fg = p.blue85 })
  hl("CurSearch", { link = "IncSearch" })
  hl("Cursor", { fg = p.blue05, bg = p.blue95 })
  hl("CursorColumn", { bg = p.blue25 })
  hl("CursorIM", { fg = p.blue05, bg = p.blue95 })
  hl("CursorLine", { underline = true, sp = p.blue35 })
  hl("CursorLineNr", { fg = p.blue95 })
  hl("DiagnosticDeprecated", { strikethrough = true })
  hl("DiagnosticError", { fg = p.error_red })
  hl("DiagnosticHint", { fg = p.blue75 })
  hl("DiagnosticInfo", { fg = p.blue75 })
  hl("DiagnosticOk", { fg = p.bright_green })
  hl("DiagnosticUnderlineError", { undercurl = true, sp = p.error_red })
  hl("DiagnosticUnderlineHint", { undercurl = true, sp = p.blue75 })
  hl("DiagnosticUnderlineInfo", { undercurl = true, sp = p.blue75 })
  hl("DiagnosticUnderlineOk", { undercurl = true, sp = p.bright_green })
  hl("DiagnosticUnderlineWarn", { undercurl = true, sp = p.warning_yellow })
  hl("DiagnosticUnnecessary", { fg = p.blue35 })
  hl("DiagnosticWarn", { fg = p.warning_yellow })
  hl("DiffAdd", { fg = p.bright_pink })
  hl("DiffChange", { fg = p.bright_orange })
  hl("DiffDelete", { fg = p.bright_azure })
  hl("DiffText", { fg = p.blue75 })
  hl("Directory", { bold = true })
  hl("EndOfBuffer", { fg = p.blue65 })
  hl("ErrorMsg", { fg = p.error_red, bold = true })
  hl("FoldColumn", { fg = p.blue35 })
  hl("Folded", { fg = p.blue65, bg = p.blue15 })
  hl("Function", { fg = p.blue85 })
  hl("IncSearch", { link = "Search" })
  hl("Italic", { italic = true })
  hl("lCursor", { fg = p.blue05, bg = p.blue95 })
  hl("LineNr", { fg = p.blue45 })
  hl("MatchParen", { bg = p.blue25 })
  hl("ModeMsg", { fg = p.blue75 })
  hl("MoreMsg", { fg = p.blue75, italic = true })
  hl("MsgArea", { fg = p.blue75 })
  hl("MsgSeparator", { link = "StatusLine" })
  hl("NonText", { fg = p.blue65 })
  hl("Normal", { fg = p.blue75, bg = p.blue05 })
  hl("NormalFloat", { bg = p.blue25 })
  hl("NvimInternalError", { fg = p.blue05, bg = p.error_red })
  hl("Pmenu", { fg = p.blue75, bg = p.blue35 })
  hl("PmenuSbar", { fg = p.blue75, bg = p.blue55 })
  hl("PmenuSel", { fg = p.blue75, bg = p.blue45 })
  hl("PmenuThumb", { bg = p.blue65})
  hl("PreProc", { fg = p.blue85 })
  hl("Question", { fg = p.blue75, italic = true })
  hl("QuickFixLine", { reverse = true })
  hl("RedrawDebugClear", { bg = p.warning_yellow })
  hl("RedrawDebugComposed", { reverse = true })
  hl("RedrawDebugNormal", { reverse = true })
  hl("RedrawDebugRecompose", { bg = p.error_red })
  hl("Search", { reverse = true })
  hl("SignColumn", { fg = p.blue65, bg = p.blue05 })
  hl("SpecialKey", { link = "Special" })
  hl("SpellBad", { undercurl = true, sp = p.error_red })
  hl("SpellCap", { undercurl = true, sp = p.bright_azure })
  hl("SpellLocal", { undercurl = true, sp = p.bright_cyan })
  hl("SpellRare", { undercurl = true, sp = p.bright_violet })
  hl("StatusLine", { fg = p.blue75, bg = p.blue15 })
  hl("Substitute", { reverse = true })
  hl("TabLine", { fg = p.blue75, bg = p.blue15 })
  hl("TabLineFill", { link = "StatusLine" })
  hl("TabLineSel", { fg = p.blue15, bg = p.blue75 })
  hl("TermCursor", { fg = p.blue05, bg = p.blue95 })
  hl("Title", { bold = true })
  hl("VertSplit", { fg = p.blue25 })
  hl("Visual", { bg = p.blue25 })
  hl("VisualNOS", { link = "Visual" })
  hl("WarningMsg", { fg = p.warning_yellow })
  hl("Whitespace", { fg = p.blue25 })
  hl("WildMenu", { bg = p.blue25 })
  hl("WinBar", { bold = true })
  hl("WinSeparator", { fg = p.blue25 })

  -- syntax
  hl("Boolean", { link = "Constant" })
  hl("Character", { link = "Constant" })
  hl("Conditional", { link = "Statement" })
  hl("Constant", { fg = p.blue95 })
  hl("Debug", { link = "Special" })
  hl("Define", { link = "PreProc" })
  hl("Delimiter", { link = "Special" })
  hl("Error", { fg = p.error_red, bold = true })
  hl("Exception", { link = "Statement" })
  hl("Float", { link = "Constant" })
  hl("Identifier", { fg = p.blue55 })
  hl("Ignore", {})
  hl("Include", { link = "PreProc" })
  hl("Keyword", { link = "Statement" })
  hl("Label", { link = "Statement" })
  hl("Macro", { link = "PreProc" })
  hl("Number", { link = "Constant" })
  hl("Operator", { link = "Statement" })
  hl("PreCondit", { link = "PreProc" })
  hl("Repeat", { link = "Statement" })
  hl("Special", { fg = p.blue95 })
  hl("SpecialChar", { link = "Special" })
  hl("SpecialComment", { fg = p.blue65 })
  hl("Statement", { fg = p.blue95 })
  hl("StorageClass", { italic = true })
  hl("String", { fg = p.blue65 })
  hl("Structure", { link = "Type" })
  hl("Tag", { link = "Special" })
  hl("Todo", { fg = p.blue45 })
  hl("Type", { italic = true })
  hl("Typedef", { link = "Type" })
  hl("Underlined", { underline = true })

  -- vimdiff
  hl("diffAdded", { link = "DiffAdd" })
  hl("diffChanged", { link = "DiffChange" })
  hl("diffFile", { fg = p.blue75 })
  hl("diffNewFile", { link = "DiffAdd" })
  hl("diffOldFile", { link = "DiffDelete" })
  hl("diffRemoved", { link = "DiffDelete" })

  -- hrsh7th/nvim-cmp
  hl("CmpItemAbbr", { fg = p.blue75 })
  hl("CmpItemAbbrDeprecated", { fg = p.blue65 })
  hl("CmpItemAbbrMatch", { fg = p.blue95 })
  hl("CmpItemAbbrMatchFuzzy", { fg = p.blue85 })
  hl("CmpItemKind", { fg = p.blue65, italic = true })
  hl("CmpItemMenu", { fg = p.blue35 })

	-- lewis6991/gitsigns.nvim
  hl("GitSignsAdd", { fg = p.bright_pink })
  hl("GitSignsChange", { fg = p.bright_orange })
  hl("GitSignsDelete", { fg = p.bright_azure })
  hl("GitSignsAddInline", { fg = p.blue05, bg = p.bright_pink })
  hl("GitSignsChangeInline", { fg = p.blue05, bg = p.bright_orange })
  hl("GitSignsDeleteInline", { fg = p.blue05, bg = p.bright_azure })

  -- lukas-reineke/indent-blankline.nvim
  hl("IndentBlanklineContextChar", { fg = p.blue35 })
  hl("IndentBlanklineContextStart", { fg = p.blue35 })
  hl("IndentBlanklineChar", { fg = p.blue25 })
  hl("IndentBlanklineSpaceChar", { fg = p.blue25 })
  hl("IndentBlanklineSpaceCharBlankline", { fg = p.blue25 })
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
