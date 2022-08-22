local blackwind = require("blackwind.colors")

local theme = {}

theme.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Type = { fg = blackwind.blackwind9_gui }, -- int, long, char, etc.
		StorageClass = { fg = blackwind.blackwind9_gui }, -- static, register, volatile, etc.
		Structure = { fg = blackwind.blackwind9_gui }, -- struct, union, enum, etc.
		Constant = { fg = blackwind.blackwind4_gui }, -- any constant
		Character = { fg = blackwind.blackwind14_gui }, -- any character constant: 'c', '\n'
		Number = { fg = blackwind.blackwind15_gui }, -- a number constant: 5
		Boolean = { fg = blackwind.blackwind9_gui }, -- a boolean constant: TRUE, false
		Float = { fg = blackwind.blackwind15_gui }, -- a floating point constant: 2.3e10
		Statement = { fg = blackwind.blackwind9_gui }, -- any statement
		Label = { fg = blackwind.blackwind9_gui }, -- case, default, etc.
		Operator = { fg = blackwind.blackwind9_gui }, -- sizeof", "+", "*", etc.
		Exception = { fg = blackwind.blackwind9_gui }, -- try, catch, throw
		PreProc = { fg = blackwind.blackwind9_gui }, -- generic Preprocessor
		Include = { fg = blackwind.blackwind9_gui }, -- preprocessor #include
		Define = { fg = blackwind.blackwind9_gui }, -- preprocessor #define
		Macro = { fg = blackwind.blackwind9_gui }, -- same as Define
		Typedef = { fg = blackwind.blackwind9_gui }, -- A typedef
		PreCondit = { fg = blackwind.blackwind13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = blackwind.blackwind4_gui }, -- any special symbol
		SpecialChar = { fg = blackwind.blackwind13_gui }, -- special character in a constant
		Tag = { fg = blackwind.blackwind4_gui }, -- you can use CTRL-] on this
		Delimiter = { fg = blackwind.blackwind6_gui }, -- character that needs attention like , or .
		SpecialComment = { fg = blackwind.blackwind8_gui }, -- special things inside a comment
		Debug = { fg = blackwind.blackwind11_gui }, -- debugging statements
		Underlined = { fg = blackwind.blackwind14_gui, bg = blackwind.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = blackwind.blackwind1_gui }, -- left blank, hidden
		Error = { fg = blackwind.blackwind11_gui, bg = blackwind.none, style = "bold,underline" }, -- any erroneous construct
		Todo = { fg = blackwind.blackwind13_gui, bg = blackwind.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = blackwind.none, bg = blackwind.blackwind0_gui },

		htmlLink = { fg = blackwind.blackwind14_gui, style = "underline" },
		htmlH1 = { fg = blackwind.blackwind8_gui, style = "bold" },
		htmlH2 = { fg = blackwind.blackwind11_gui, style = "bold" },
		htmlH3 = { fg = blackwind.blackwind14_gui, style = "bold" },
		htmlH4 = { fg = blackwind.blackwind15_gui, style = "bold" },
		htmlH5 = { fg = blackwind.blackwind9_gui, style = "bold" },
		markdownH1 = { fg = blackwind.blackwind8_gui, style = "bold" },
		markdownH2 = { fg = blackwind.blackwind11_gui, style = "bold" },
		markdownH3 = { fg = blackwind.blackwind14_gui, style = "bold" },
		markdownH1Delimiter = { fg = blackwind.blackwind8_gui },
		markdownH2Delimiter = { fg = blackwind.blackwind11_gui },
		markdownH3Delimiter = { fg = blackwind.blackwind14_gui },
	}

	-- Italic comments
	if vim.g.blackwind_italic == false then
		syntax.Comment = { fg = blackwind.blackwind3_gui_bright } -- normal comments
		syntax.Conditional = { fg = blackwind.blackwind9_gui } -- normal if, then, else, endif, switch, etc.
		syntax.Function = { fg = blackwind.blackwind8_gui } -- normal function names
		syntax.Identifier = { fg = blackwind.blackwind9_gui } -- any variable name
		syntax.Keyword = { fg = blackwind.blackwind9_gui } -- normal for, do, while, etc.
		syntax.Repeat = { fg = blackwind.blackwind9_gui } -- normal any other keyword
		syntax.String = { fg = blackwind.blackwind14_gui } -- any string
	else
		syntax.Comment = { fg = blackwind.blackwind3_gui_bright, bg = blackwind.none, style = "italic" } -- italic comments
		syntax.Conditional = { fg = blackwind.blackwind9_gui, bg = blackwind.none, style = "italic" } -- italic if, then, else, endif, switch, etc.
		syntax.Function = { fg = blackwind.blackwind8_gui, bg = blackwind.none, style = "italic" } -- italic funtion names
		syntax.Identifier = { fg = blackwind.blackwind9_gui, bg = blackwind.none, style = "italic" } -- any variable name
		syntax.Keyword = { fg = blackwind.blackwind9_gui, bg = blackwind.none, style = "italic" } -- italic for, do, while, etc.
		syntax.Repeat = { fg = blackwind.blackwind9_gui, bg = blackwind.none, style = "italic" } -- italic any other keyword
		syntax.String = { fg = blackwind.blackwind14_gui, bg = blackwind.none, style = "italic" } -- any string
	end

	return syntax
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = blackwind.blackwind4_gui, bg = blackwind.float }, -- normal text and background color
		FloatBorder = { fg = blackwind.blackwind4_gui, bg = blackwind.float }, -- normal text and background color
		ColorColumn = { fg = blackwind.none, bg = blackwind.blackwind1_gui }, --  used for the columns set with 'colorcolumn'
		Conceal = { fg = blackwind.blackwind1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = blackwind.blackwind4_gui, bg = blackwind.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = blackwind.blackwind5_gui, bg = blackwind.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = blackwind.blackwind7_gui, bg = blackwind.none }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = blackwind.blackwind1_gui },
		ErrorMsg = { fg = blackwind.none },
		Folded = { fg = blackwind.blackwind3_gui_bright, bg = blackwind.none, style = "italic" },
		FoldColumn = { fg = blackwind.blackwind7_gui },
		IncSearch = { fg = blackwind.blackwind6_gui, bg = blackwind.blackwind10_gui },
		LineNr = { fg = blackwind.blackwind3_gui_bright },
		CursorLineNr = { fg = blackwind.blackwind4_gui },
		MatchParen = { fg = blackwind.blackwind15_gui, bg = blackwind.none, style = "bold" },
		ModeMsg = { fg = blackwind.blackwind4_gui },
		MoreMsg = { fg = blackwind.blackwind4_gui },
		NonText = { fg = blackwind.blackwind1_gui },
		Pmenu = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind2_gui },
		PmenuSel = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind10_gui },
		PmenuSbar = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind2_gui },
		PmenuThumb = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind4_gui },
		Question = { fg = blackwind.blackwind14_gui },
		QuickFixLine = { fg = blackwind.blackwind4_gui, bg = blackwind.none, style = "reverse" },
		qfLineNr = { fg = blackwind.blackwind4_gui, bg = blackwind.none, style = "reverse" },
		Search = { fg = blackwind.blackwind10_gui, bg = blackwind.blackwind6_gui, style = "reverse" },
		SpecialKey = { fg = blackwind.blackwind9_gui },
		SpellBad = { fg = blackwind.blackwind11_gui, bg = blackwind.none, style = "italic,undercurl" },
		SpellCap = { fg = blackwind.blackwind7_gui, bg = blackwind.none, style = "italic,undercurl" },
		SpellLocal = { fg = blackwind.blackwind8_gui, bg = blackwind.none, style = "italic,undercurl" },
		SpellRare = { fg = blackwind.blackwind9_gui, bg = blackwind.none, style = "italic,undercurl" },
		StatusLine = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui },
		StatusLineNC = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui },
		StatusLineTerm = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui },
		StatusLineTermNC = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui },
		TabLineFill = { fg = blackwind.blackwind4_gui, bg = blackwind.none },
		TablineSel = { fg = blackwind.blackwind1_gui, bg = blackwind.blackwind9_gui },
		Tabline = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui },
		Title = { fg = blackwind.blackwind14_gui, bg = blackwind.none, style = "bold" },
		Visual = { fg = blackwind.none, bg = blackwind.blackwind2_gui },
		VisualNOS = { fg = blackwind.none, bg = blackwind.blackwind2_gui },
		WarningMsg = { fg = blackwind.blackwind15_gui },
		WildMenu = { fg = blackwind.blackwind12_gui, bg = blackwind.none, style = "bold" },
		CursorColumn = { fg = blackwind.none, bg = blackwind.cursorlinefg },
		CursorLine = { fg = blackwind.none, bg = blackwind.cursorlinefg },
		ToolbarLine = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui },
		ToolbarButton = { fg = blackwind.blackwind4_gui, bg = blackwind.none, style = "bold" },
		NormalMode = { fg = blackwind.blackwind4_gui, bg = blackwind.none, style = "reverse" },
		InsertMode = { fg = blackwind.blackwind14_gui, bg = blackwind.none, style = "reverse" },
		ReplacelMode = { fg = blackwind.blackwind11_gui, bg = blackwind.none, style = "reverse" },
		VisualMode = { fg = blackwind.blackwind9_gui, bg = blackwind.none, style = "reverse" },
		CommandMode = { fg = blackwind.blackwind4_gui, bg = blackwind.none, style = "reverse" },
		Warnings = { fg = blackwind.blackwind15_gui },

		healthError = { fg = blackwind.blackwind11_gui },
		healthSuccess = { fg = blackwind.blackwind14_gui },
		healthWarning = { fg = blackwind.blackwind15_gui },

		-- dashboard
		DashboardShortCut = { fg = blackwind.blackwind7_gui },
		DashboardHeader = { fg = blackwind.blackwind9_gui },
		DashboardCenter = { fg = blackwind.blackwind8_gui },
		DashboardFooter = { fg = blackwind.blackwind14_gui, style = "italic" },

		-- BufferLine
		BufferLineIndicatorSelected = { fg = blackwind.blackwind0_gui },
		BufferLineFill = { bg = blackwind.blackwind0_gui },

		-- Barbar
		BufferTabpageFill = { bg = blackwind.blackwind0_gui },

		BufferCurrent = { bg = blackwind.blackwind1_gui },
		BufferCurrentMod = { bg = blackwind.blackwind1_gui, fg = blackwind.blackwind15_gui },
		BufferCurrentIcon = { bg = blackwind.blackwind1_gui },
		BufferCurrentSign = { bg = blackwind.blackwind1_gui },
		BufferCurrentIndex = { bg = blackwind.blackwind1_gui },
		BufferCurrentTarget = { bg = blackwind.blackwind1_gui, fg = blackwind.blackwind11_gui },

		BufferInactive = { bg = blackwind.blackwind0_gui, fg = blackwind.blackwind3_gui },
		BufferInactiveMod = { bg = blackwind.blackwind0_gui, fg = blackwind.blackwind15_gui },
		BufferInactiveIcon = { bg = blackwind.blackwind0_gui, fg = blackwind.blackwind3_gui },
		BufferInactiveSign = { bg = blackwind.blackwind0_gui, fg = blackwind.blackwind3_gui },
		BufferInactiveIndex = { bg = blackwind.blackwind0_gui, fg = blackwind.blackwind3_gui },
		BufferInactiveTarget = { bg = blackwind.blackwind0_gui, fg = blackwind.blackwind11_gui },

		BufferVisible = { bg = blackwind.blackwind2_gui },
		BufferVisibleMod = { bg = blackwind.blackwind2_gui, fg = blackwind.blackwind15_gui },
		BufferVisibleIcon = { bg = blackwind.blackwind2_gui },
		BufferVisibleSign = { bg = blackwind.blackwind2_gui },
		BufferVisibleIndex = { bg = blackwind.blackwind2_gui },
		BufferVisibleTarget = { bg = blackwind.blackwind2_gui, fg = blackwind.blackwind11_gui },

		-- nvim-notify
		NotifyDEBUGBorder = { fg = blackwind.blackwind3_gui },
		NotifyDEBUGIcon = { fg = blackwind.blackwind3_gui },
		NotifyDEBUGTitle = { fg = blackwind.blackwind3_gui },
		NotifyERRORBorder = { fg = blackwind.blackwind11_gui },
		NotifyERRORIcon = { fg = blackwind.blackwind11_gui },
		NotifyERRORTitle = { fg = blackwind.blackwind11_gui },
		NotifyINFOBorder = { fg = blackwind.blackwind14_gui },
		NotifyINFOIcon = { fg = blackwind.blackwind14_gui },
		NotifyINFOTitle = { fg = blackwind.blackwind14_gui },
		NotifyTRACEBorder = { fg = blackwind.blackwind15_gui },
		NotifyTRACEIcon = { fg = blackwind.blackwind15_gui },
		NotifyTRACETitle = { fg = blackwind.blackwind15_gui },
		NotifyWARNBorder = { fg = blackwind.blackwind13_gui },
		NotifyWARNIcon = { fg = blackwind.blackwind13_gui },
		NotifyWARNTitle = { fg = blackwind.blackwind13_gui },

		-- leap.nvim
		LeapMatch = { style = "underline,nocombine", fg = blackwind.blackwind13_gui },
		LeapLabelPrimary = { style = "nocombine", fg = blackwind.blackwind0_gui, bg = blackwind.blackwind13_gui },
		LeapLabelSecondary = { style = "nocombine", fg = blackwind.blackwind0_gui, bg = blackwind.blackwind15_gui },
	}

	-- Options:

	--Set transparent background
	if vim.g.blackwind_disable_background then
		editor.Normal = { fg = blackwind.blackwind4_gui, bg = blackwind.none } -- normal text and background color
		editor.SignColumn = { fg = blackwind.blackwind4_gui, bg = blackwind.none }
	else
		editor.Normal = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind0_gui } -- normal text and background color
		editor.SignColumn = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind0_gui }
	end

	-- Remove window split borders
	if vim.g.blackwind_borders then
		editor.VertSplit = { fg = blackwind.blackwind2_gui }
	else
		editor.VertSplit = { fg = blackwind.blackwind0_gui }
	end

	if vim.g.blackwind_uniform_diff_background then
		editor.DiffAdd = { fg = blackwind.blackwind14_gui, bg = blackwind.blackwind1_gui } -- diff mode: Added line
		editor.DiffChange = { fg = blackwind.blackwind13_gui, bg = blackwind.blackwind1_gui } --  diff mode: Changed line
		editor.DiffDelete = { fg = blackwind.blackwind11_gui, bg = blackwind.blackwind1_gui } -- diff mode: Deleted line
		editor.DiffText = { fg = blackwind.blackwind15_gui, bg = blackwind.blackwind1_gui } -- diff mode: Changed text within a changed line
	else
		editor.DiffAdd = { fg = blackwind.blackwind14_gui, bg = blackwind.none, style = "reverse" } -- diff mode: Added line
		editor.DiffChange = { fg = blackwind.blackwind13_gui, bg = blackwind.none, style = "reverse" } --  diff mode: Changed line
		editor.DiffDelete = { fg = blackwind.blackwind11_gui, bg = blackwind.none, style = "reverse" } -- diff mode: Deleted line
		editor.DiffText = { fg = blackwind.blackwind15_gui, bg = blackwind.none, style = "reverse" } -- diff mode: Changed text within a changed line
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = blackwind.blackwind1_gui
	vim.g.terminal_color_1 = blackwind.blackwind11_gui
	vim.g.terminal_color_2 = blackwind.blackwind14_gui
	vim.g.terminal_color_3 = blackwind.blackwind13_gui
	vim.g.terminal_color_4 = blackwind.blackwind9_gui
	vim.g.terminal_color_5 = blackwind.blackwind15_gui
	vim.g.terminal_color_6 = blackwind.blackwind8_gui
	vim.g.terminal_color_7 = blackwind.blackwind5_gui
	vim.g.terminal_color_8 = blackwind.blackwind3_gui
	vim.g.terminal_color_9 = blackwind.blackwind11_gui
	vim.g.terminal_color_10 = blackwind.blackwind14_gui
	vim.g.terminal_color_11 = blackwind.blackwind13_gui
	vim.g.terminal_color_12 = blackwind.blackwind9_gui
	vim.g.terminal_color_13 = blackwind.blackwind15_gui
	vim.g.terminal_color_14 = blackwind.blackwind7_gui
	vim.g.terminal_color_15 = blackwind.blackwind6_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSAnnotation = { fg = blackwind.blackwind12_gui }, -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
		TSConstructor = { fg = blackwind.blackwind9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = blackwind.blackwind13_gui }, -- For constants
		TSFloat = { fg = blackwind.blackwind15_gui }, -- For floats
		TSNumber = { fg = blackwind.blackwind15_gui }, -- For all number

		TSAttribute = { fg = blackwind.blackwind15_gui }, -- (unstable) TODO: docs
		TSVariable = { fg = blackwind.blackwind4_gui, style = "bold" }, -- Any variable name that does not have another highlight.
		TSVariableBuiltin = { fg = blackwind.blackwind4_gui, style = "bold" },
		TSBoolean = { fg = blackwind.blackwind9_gui, style = "bold" }, -- For booleans.
		TSConstBuiltin = { fg = blackwind.blackwind7_gui, style = "bold" }, -- For constant that are built in the language: `nil` in Lua.
		TSConstMacro = { fg = blackwind.blackwind7_gui, style = "bold" }, -- For constants that are defined by macros: `NULL` in C.
		TSError = { fg = blackwind.blackwind11_gui }, -- For syntax/parser errors.
		TSException = { fg = blackwind.blackwind15_gui }, -- For exception related keywords.
		TSFuncMacro = { fg = blackwind.blackwind7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = blackwind.blackwind9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = blackwind.blackwind15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = blackwind.blackwind9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = blackwind.blackwind10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = blackwind.blackwind10_gui }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = blackwind.blackwind8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = blackwind.blackwind8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = blackwind.blackwind8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = blackwind.blackwind15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = blackwind.blackwind9_gui }, -- For types.
		TSTypeBuiltin = { fg = blackwind.blackwind9_gui }, -- For builtin types.
		TSTag = { fg = blackwind.blackwind4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = blackwind.blackwind15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = blackwind.blackwind4_gui }, -- For strings consideblackwind11_gui text in a markup language.
		TSTextReference = { fg = blackwind.blackwind15_gui }, -- FIXME
		TSEmphasis = { fg = blackwind.blackwind10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = blackwind.blackwind4_gui, bg = blackwind.none, style = "underline" }, -- For text to be represented with an underline.
		TSTitle = { fg = blackwind.blackwind10_gui, bg = blackwind.none, style = "bold" }, -- Text that is part of a title.
		TSLiteral = { fg = blackwind.blackwind4_gui }, -- Literal text.
		TSURI = { fg = blackwind.blackwind14_gui }, -- Any URI like a link or email.
		TSAnnotation = { fg = blackwind.blackwind11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	}

	if vim.g.blackwind_italic == false then
		-- Comments
		treesitter.TSComment = { fg = blackwind.blackwind3_gui_bright }
		-- Conditionals
		treesitter.TSConditional = { fg = blackwind.blackwind9_gui } -- For keywords related to conditionnals.
		-- Function names
		treesitter.TSFunction = { fg = blackwind.blackwind8_gui } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = blackwind.blackwind7_gui } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = blackwind.blackwind8_gui }
		-- Namespaces and property accessors
		treesitter.TSNamespace = { fg = blackwind.blackwind4_gui } -- For identifiers referring to modules and namespaces.
		treesitter.TSField = { fg = blackwind.blackwind4_gui } -- For fields in literals
		treesitter.TSProperty = { fg = blackwind.blackwind10_gui } -- Same as `TSField`
		-- Language keywords
		treesitter.TSKeyword = { fg = blackwind.blackwind9_gui } -- For keywords that don't fall in other categories.
		treesitter.TSKeywordFunction = { fg = blackwind.blackwind8_gui }
		treesitter.TSKeywordReturn = { fg = blackwind.blackwind8_gui }
		treesitter.TSKeywordOperator = { fg = blackwind.blackwind8_gui }
		treesitter.TSRepeat = { fg = blackwind.blackwind9_gui } -- For keywords related to loops.
		-- Strings
		treesitter.TSString = { fg = blackwind.blackwind14_gui } -- For strings.
		treesitter.TSStringRegex = { fg = blackwind.blackwind7_gui } -- For regexes.
		treesitter.TSStringEscape = { fg = blackwind.blackwind15_gui } -- For escape characters within a string.
		treesitter.TSCharacter = { fg = blackwind.blackwind14_gui } -- For characters.
	else
		-- Comments
		treesitter.TSComment = { fg = blackwind.blackwind3_gui_bright, style = "italic" }
		-- Conditionals
		treesitter.TSConditional = { fg = blackwind.blackwind9_gui, style = "italic" } -- For keywords related to conditionnals.
		-- Function names
		treesitter.TSFunction = { fg = blackwind.blackwind8_gui, style = "italic" } -- For fuction (calls and definitions).
		treesitter.TSMethod = { fg = blackwind.blackwind7_gui, style = "italic" } -- For method calls and definitions.
		treesitter.TSFuncBuiltin = { fg = blackwind.blackwind8_gui, style = "italic" }
		-- Namespaces and property accessors
		treesitter.TSNamespace = { fg = blackwind.blackwind4_gui, style = "italic" } -- For identifiers referring to modules and namespaces.
		treesitter.TSField = { fg = blackwind.blackwind4_gui, style = "italic" } -- For fields.
		treesitter.TSProperty = { fg = blackwind.blackwind10_gui, style = "italic" } -- Same as `TSField`, but when accessing, not declaring.
		-- Language keywords
		treesitter.TSKeyword = { fg = blackwind.blackwind9_gui, style = "italic" } -- For keywords that don't fall in other categories.
		treesitter.TSKeywordFunction = { fg = blackwind.blackwind8_gui, style = "italic" }
		treesitter.TSKeywordReturn = { fg = blackwind.blackwind8_gui, style = "italic" }
		treesitter.TSKeywordOperator = { fg = blackwind.blackwind8_gui, style = "italic" }
		treesitter.TSRepeat = { fg = blackwind.blackwind9_gui, style = "italic" } -- For keywords related to loops.
		-- Strings
		treesitter.TSString = { fg = blackwind.blackwind14_gui, style = "italic" } -- For strings.
		treesitter.TSStringRegex = { fg = blackwind.blackwind7_gui, style = "italic" } -- For regexes.
		treesitter.TSStringEscape = { fg = blackwind.blackwind15_gui, style = "italic" } -- For escape characters within a string.
		treesitter.TSCharacter = { fg = blackwind.blackwind14_gui, style = "italic" } -- For characters.
	end

	return treesitter
end

theme.loadFiletypes = function()
	-- Filetype-specific highlight groups

	local ft = {
		-- yaml
		yamlBlockMappingKey = { fg = blackwind.blackwind7_gui },
		yamlBool = { link = "Boolean" },
		yamlDocumentStart = { link = "Keyword" },
		yamlTSField = { fg = blackwind.blackwind7_gui },
		yamlTSString = { fg = blackwind.blackwind4_gui },
		yamlTSPunctSpecial = { link = "Keyword" },
		yamlKey = { fg = blackwind.blackwind7_gui }, -- stephpy/vim-yaml
	}

	return ft
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = blackwind.blackwind11_gui }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = blackwind.blackwind11_gui }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = blackwind.blackwind11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = blackwind.blackwind11_gui }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = blackwind.blackwind11_gui }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = blackwind.blackwind15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = blackwind.blackwind15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = blackwind.blackwind15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = blackwind.blackwind15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = blackwind.blackwind15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = blackwind.blackwind10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = blackwind.blackwind10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = blackwind.blackwind10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = blackwind.blackwind10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = blackwind.blackwind10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = blackwind.blackwind9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = blackwind.blackwind9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = blackwind.blackwind9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = blackwind.blackwind9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = blackwind.blackwind10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui }, -- used for highlighting "text" references
		LspReferenceRead = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = blackwind.blackwind4_gui },
		LspTroubleCount = { fg = blackwind.blackwind9_gui, bg = blackwind.blackwind10_gui },
		LspTroubleNormal = { fg = blackwind.blackwind4_gui, bg = blackwind.sidebar },

		-- Diff
		diffAdded = { fg = blackwind.blackwind14_gui },
		diffRemoved = { fg = blackwind.blackwind11_gui },
		diffChanged = { fg = blackwind.blackwind15_gui },
		diffOldFile = { fg = blackwind.yelow },
		diffNewFile = { fg = blackwind.blackwind12_gui },
		diffFile = { fg = blackwind.blackwind7_gui },
		diffLine = { fg = blackwind.blackwind3_gui },
		diffIndexLine = { fg = blackwind.blackwind9_gui },

		-- Neogit
		NeogitBranch = { fg = blackwind.blackwind10_gui },
		NeogitRemote = { fg = blackwind.blackwind9_gui },
		NeogitHunkHeader = { fg = blackwind.blackwind8_gui },
		NeogitHunkHeaderHighlight = { fg = blackwind.blackwind8_gui, bg = blackwind.blackwind1_gui },
		NeogitDiffContextHighlight = { bg = blackwind.blackwind1_gui },
		NeogitDiffDeleteHighlight = { fg = blackwind.blackwind11_gui, style = "reverse" },
		NeogitDiffAddHighlight = { fg = blackwind.blackwind14_gui, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = blackwind.blackwind14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = blackwind.blackwind15_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = blackwind.blackwind11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = blackwind.blackwind14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = blackwind.blackwind14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = blackwind.blackwind14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = blackwind.blackwind15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = blackwind.blackwind15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = blackwind.blackwind15_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = blackwind.blackwind11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = blackwind.blackwind11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = blackwind.blackwind11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsCurrentLineBlame = { fg = blackwind.blackwind3_gui_bright, style = "bold" },

		-- Telescope
		TelescopePromptBorder = { fg = blackwind.blackwind8_gui },
		TelescopeResultsBorder = { fg = blackwind.blackwind9_gui },
		TelescopePreviewBorder = { fg = blackwind.blackwind14_gui },
		TelescopeSelectionCaret = { fg = blackwind.blackwind9_gui },
		TelescopeSelection = { fg = blackwind.blackwind9_gui },
		TelescopeMatching = { fg = blackwind.blackwind8_gui },

		-- NvimTree
		NvimTreeRootFolder = { fg = blackwind.blackwind7_gui, style = "bold" },
		NvimTreeGitDirty = { fg = blackwind.blackwind15_gui },
		NvimTreeGitNew = { fg = blackwind.blackwind14_gui },
		NvimTreeImageFile = { fg = blackwind.blackwind15_gui },
		NvimTreeExecFile = { fg = blackwind.blackwind14_gui },
		NvimTreeSpecialFile = { fg = blackwind.blackwind9_gui, style = "underline" },
		NvimTreeFolderName = { fg = blackwind.blackwind10_gui },
		NvimTreeEmptyFolderName = { fg = blackwind.blackwind1_gui },
		NvimTreeFolderIcon = { fg = blackwind.blackwind4_gui },
		NvimTreeIndentMarker = { fg = blackwind.blackwind1_gui },
		LspDiagnosticsError = { fg = blackwind.blackwind11_gui },
		LspDiagnosticsWarning = { fg = blackwind.blackwind15_gui },
		LspDiagnosticsInformation = { fg = blackwind.blackwind10_gui },
		LspDiagnosticsHint = { fg = blackwind.blackwind9_gui },

		-- WhichKey
		WhichKey = { fg = blackwind.blackwind4_gui, style = "bold" },
		WhichKeyGroup = { fg = blackwind.blackwind4_gui },
		WhichKeyDesc = { fg = blackwind.blackwind7_gui, style = "italic" },
		WhichKeySeperator = { fg = blackwind.blackwind4_gui },
		WhichKeyFloating = { bg = blackwind.float },
		WhichKeyFloat = { bg = blackwind.float },

		-- LspSaga
		DiagnosticError = { fg = blackwind.blackwind11_gui },
		DiagnosticWarning = { fg = blackwind.blackwind15_gui },
		DiagnosticInformation = { fg = blackwind.blackwind10_gui },
		DiagnosticHint = { fg = blackwind.blackwind9_gui },
		DiagnosticTruncateLine = { fg = blackwind.blackwind4_gui },
		LspFloatWinNormal = { bg = blackwind.blackwind2_gui },
		LspFloatWinBorder = { fg = blackwind.blackwind9_gui },
		LspSagaBorderTitle = { fg = blackwind.blackwind8_gui },
		LspSagaHoverBorder = { fg = blackwind.blackwind10_gui },
		LspSagaRenameBorder = { fg = blackwind.blackwind14_gui },
		LspSagaDefPreviewBorder = { fg = blackwind.blackwind14_gui },
		LspSagaCodeActionBorder = { fg = blackwind.blackwind7_gui },
		LspSagaFinderSelection = { fg = blackwind.blackwind14_gui },
		LspSagaCodeActionTitle = { fg = blackwind.blackwind10_gui },
		LspSagaCodeActionContent = { fg = blackwind.blackwind9_gui },
		LspSagaSignatureHelpBorder = { fg = blackwind.blackwind13_gui },
		ReferencesCount = { fg = blackwind.blackwind9_gui },
		DefinitionCount = { fg = blackwind.blackwind9_gui },
		DefinitionIcon = { fg = blackwind.blackwind7_gui },
		ReferencesIcon = { fg = blackwind.blackwind7_gui },
		TargetWord = { fg = blackwind.blackwind8_gui },

		-- Sneak
		Sneak = { fg = blackwind.blackwind0_gui, bg = blackwind.blackwind4_gui },
		SneakScope = { bg = blackwind.blackwind1_gui },

		-- Cmp
		CmpItemKind = { fg = blackwind.blackwind15_gui },
		CmpItemAbbrMatch = { fg = blackwind.blackwind5_gui, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = blackwind.blackwind5_gui, style = "bold" },
		CmpItemAbbr = { fg = blackwind.blackwind4_gui },
		CmpItemMenu = { fg = blackwind.blackwind14_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = blackwind.blackwind3_gui },
		IndentBlanklineContextChar = { fg = blackwind.blackwind10_gui },

		-- Illuminate
		illuminatedWord = { bg = blackwind.blackwind3_gui },
		illuminatedCurWord = { bg = blackwind.blackwind3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = blackwind.blackwind14_gui },
		DapStopped = { fg = blackwind.blackwind15_gui },

		-- nvim-dap-ui
		DapUIVariable = { fg = blackwind.blackwind4_gui },
		DapUIScope = { fg = blackwind.blackwind8_gui },
		DapUIType = { fg = blackwind.blackwind9_gui },
		DapUIValue = { fg = blackwind.blackwind4_gui },
		DapUIModifiedValue = { fg = blackwind.blackwind8_gui },
		DapUIDecoration = { fg = blackwind.blackwind8_gui },
		DapUIThread = { fg = blackwind.blackwind8_gui },
		DapUIStoppedThread = { fg = blackwind.blackwind8_gui },
		DapUIFrameName = { fg = blackwind.blackwind4_gui },
		DapUISource = { fg = blackwind.blackwind9_gui },
		DapUILineNumber = { fg = blackwind.blackwind8_gui },
		DapUIFloatBorder = { fg = blackwind.blackwind8_gui },
		DapUIWatchesEmpty = { fg = blackwind.blackwind11_gui },
		DapUIWatchesValue = { fg = blackwind.blackwind8_gui },
		DapUIWatchesError = { fg = blackwind.blackwind11_gui },
		DapUIBreakpointsPath = { fg = blackwind.blackwind8_gui },
		DapUIBreakpointsInfo = { fg = blackwind.blackwind8_gui },
		DapUIBreakpointsCurrentLine = { fg = blackwind.blackwind8_gui },
		DapUIBreakpointsLine = { fg = blackwind.blackwind8_gui },

		-- Hop
		HopNextKey = { fg = blackwind.blackwind4_gui, style = "bold" },
		HopNextKey1 = { fg = blackwind.blackwind8_gui, style = "bold" },
		HopNextKey2 = { fg = blackwind.blackwind4_gui },
		HopUnmatched = { fg = blackwind.blackwind3_gui },

		-- Fern
		FernBranchText = { fg = blackwind.blackwind3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = blackwind.blackwind15_gui },
		rainbowcol2 = { fg = blackwind.blackwind13_gui },
		rainbowcol3 = { fg = blackwind.blackwind11_gui },
		rainbowcol4 = { fg = blackwind.blackwind7_gui },
		rainbowcol5 = { fg = blackwind.blackwind8_gui },
		rainbowcol6 = { fg = blackwind.blackwind15_gui },
		rainbowcol7 = { fg = blackwind.blackwind13_gui },

		-- lightspeed
		LightspeedLabel = { fg = blackwind.blackwind8_gui, style = "bold" },
		LightspeedLabelOverlapped = { fg = blackwind.blackwind8_gui, style = "bold,underline" },
		LightspeedLabelDistant = { fg = blackwind.blackwind15_gui, style = "bold" },
		LightspeedLabelDistantOverlapped = { fg = blackwind.blackwind15_gui, style = "bold,underline" },
		LightspeedShortcut = { fg = blackwind.blackwind10_gui, style = "bold" },
		LightspeedShortcutOverlapped = { fg = blackwind.blackwind10_gui, style = "bold,underline" },
		LightspeedMaskedChar = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind2_gui, style = "bold" },
		LightspeedGreyWash = { fg = blackwind.blackwind3_gui_bright },
		LightspeedUnlabeledMatch = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui },
		LightspeedOneCharMatch = { fg = blackwind.blackwind8_gui, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = blackwind.blackwind3_gui, bg = blackwind.none },

		-- Statusline
		StatusLineDull = { fg = blackwind.blackwind3_gui, bg = blackwind.blackwind1_gui },
		StatusLineAccent = { fg = blackwind.blackwind0_gui, bg = blackwind.blackwind13_gui },

		-- mini.nvim
		MiniCompletionActiveParameter = { style = "underline" },

		MiniCursorword = { bg = blackwind.blackwind3_gui },
		MiniCursorwordCurrent = { bg = blackwind.blackwind3_gui },

		MiniIndentscopeSymbol = { fg = blackwind.blackwind10_gui },
		MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

		MiniJump = { fg = blackwind.blackwind0_gui, bg = blackwind.blackwind4_gui },

		MiniJump2dSpot = { fg = blackwind.blackwind12_gui, style = "bold,nocombine" },

		MiniStarterCurrent = { style = "nocombine" },
		MiniStarterFooter = { fg = blackwind.blackwind14_gui, style = "italic" },
		MiniStarterHeader = { fg = blackwind.blackwind9_gui },
		MiniStarterInactive = { link = "Comment" },
		MiniStarterItem = { link = "Normal" },
		MiniStarterItemBullet = { fg = blackwind.blackwind4_gui },
		MiniStarterItemPrefix = { fg = blackwind.blackwind15_gui },
		MiniStarterSection = { fg = blackwind.blackwind4_gui },
		MiniStarterQuery = { fg = blackwind.blackwind10_gui },

		MiniStatuslineDevinfo = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind2_gui },
		MiniStatuslineFileinfo = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind2_gui },
		MiniStatuslineFilename = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind1_gui },
		MiniStatuslineInactive = { fg = blackwind.blackwind4_gui, bg = blackwind.blackwind0_gui, style = "bold" },
		MiniStatuslineModeCommand = { fg = blackwind.blackwind0_gui, bg = blackwind.blackwind15_gui, style = "bold" },
		MiniStatuslineModeInsert = { fg = blackwind.blackwind1_gui, bg = blackwind.blackwind4_gui, style = "bold" },
		MiniStatuslineModeNormal = { fg = blackwind.blackwind1_gui, bg = blackwind.blackwind9_gui, style = "bold" },
		MiniStatuslineModeOther = { fg = blackwind.blackwind0_gui, bg = blackwind.blackwind13_gui, style = "bold" },
		MiniStatuslineModeReplace = { fg = blackwind.blackwind0_gui, bg = blackwind.blackwind11_gui, style = "bold" },
		MiniStatuslineModeVisual = { fg = blackwind.blackwind0_gui, bg = blackwind.blackwind7_gui, style = "bold" },

		MiniSurround = { link = "IncSearch" },

		MiniTablineCurrent = { bg = blackwind.blackwind1_gui },
		MiniTablineFill = { link = "TabLineFill" },
		MiniTablineHidden = { bg = blackwind.blackwind0_gui, fg = blackwind.blackwind3_gui },
		MiniTablineModifiedCurrent = { bg = blackwind.blackwind1_gui, fg = blackwind.blackwind15_gui },
		MiniTablineModifiedHidden = { bg = blackwind.blackwind0_gui, fg = blackwind.blackwind15_gui },
		MiniTablineModifiedVisible = { bg = blackwind.blackwind2_gui, fg = blackwind.blackwind15_gui },
		MiniTablineTabpagesection = {
			fg = blackwind.blackwind10_gui,
			bg = blackwind.blackwind6_gui,
			style = "reverse,bold",
		},
		MiniTablineVisible = { bg = blackwind.blackwind2_gui },

		MiniTestEmphasis = { style = "bold" },
		MiniTestFail = { fg = blackwind.blackwind11_gui, style = "bold" },
		MiniTestPass = { fg = blackwind.blackwind14_gui, style = "bold" },

		MiniTrailspace = { bg = blackwind.blackwind11_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.blackwind_disable_background then
		plugins.NvimTreeNormal = { fg = blackwind.blackwind4_gui, bg = blackwind.none }
	else
		plugins.NvimTreeNormal = { fg = blackwind.blackwind4_gui, bg = blackwind.sidebar }
	end

	if vim.g.blackwind_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = blackwind.blackwind4_gui, bg = blackwind.sidebar }
	else
		plugins.NvimTreeNormal = { fg = blackwind.blackwind4_gui, bg = blackwind.none }
	end

	return plugins
end

return theme
