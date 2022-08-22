local named_colors = require("blackwind.named_colors")

local dark_colors = {
	blackwind0_gui = named_colors.black, -- blackwind0 in palette
	blackwind1_gui = named_colors.dark_gray, -- blackwind1 in palette
	blackwind2_gui = named_colors.gray, -- blackwind2 in palette
	blackwind3_gui = named_colors.light_gray, -- blackwind3 in palette
	blackwind3_gui_bright = named_colors.light_gray_bright, -- out of palette
	blackwind4_gui = named_colors.darkest_white, -- blackwind4 in palette
	blackwind5_gui = named_colors.darker_white, -- blackwind5 in palette
	blackwind6_gui = named_colors.white, -- blackwind6 in palette
	blackwind7_gui = named_colors.teal, -- blackwind7 in palette
	blackwind8_gui = named_colors.off_blue, -- blackwind8 in palette
	blackwind9_gui = named_colors.glacier, -- blackwind9 in palette
	blackwind10_gui = named_colors.blue, -- blackwind10 in palette
	blackwind11_gui = named_colors.red, -- blackwind11 in palette
	blackwind12_gui = named_colors.orange, -- blackwind12 in palette
	blackwind13_gui = named_colors.yellow, -- blackwind13 in palette
	blackwind14_gui = named_colors.green, -- blackwind14 in palette
	blackwind15_gui = named_colors.purple, -- blackwind15 in palette
	none = "NONE",
}

local light_colors = {
	blackwind0_gui = named_colors.white, -- blackwind0 in palette
	blackwind1_gui = named_colors.darker_white, -- blackwind1 in palette
	blackwind2_gui = named_colors.darkest_white, -- blackwind2 in palette
	blackwind3_gui = named_colors.light_gray, -- blackwind3 in palette
	blackwind3_gui_bright = named_colors.light_gray_bright, -- out of palette
	blackwind4_gui = named_colors.gray, -- blackwind4 in palette
	blackwind5_gui = named_colors.dark_gray, -- blackwind5 in palette
	blackwind6_gui = named_colors.black, -- blackwind6 in palette

	-- Same colors across light and dark from here down...
	blackwind7_gui = named_colors.teal, -- blackwind7 in palette
	blackwind8_gui = named_colors.off_blue, -- blackwind8 in palette
	blackwind9_gui = named_colors.glacier, -- blackwind9 in palette
	blackwind10_gui = named_colors.blue, -- blackwind10 in palette
	blackwind11_gui = named_colors.red, -- blackwind11 in palette
	blackwind12_gui = named_colors.orange, -- blackwind12 in palette
	blackwind13_gui = named_colors.yellow, -- blackwind13 in palette
	blackwind14_gui = named_colors.green, -- blackwind14 in palette
	blackwind15_gui = named_colors.purple, -- blackwind15 in palette
	none = "NONE",
}

local blackwind = (vim.o.background == "dark") and dark_colors or light_colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.blackwind_contrast then
	blackwind.sidebar = blackwind.blackwind1_gui
	blackwind.float = blackwind.blackwind1_gui
else
	blackwind.sidebar = blackwind.blackwind0_gui
	blackwind.float = blackwind.blackwind0_gui
end

if vim.g.blackwind_cursorline_transparent then
	blackwind.cursorlinefg = blackwind.blackwind0_gui
else
	blackwind.cursorlinefg = blackwind.blackwind1_gui
end

return blackwind
