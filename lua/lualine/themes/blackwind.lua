local colors = require("blackwind.colors")

local blackwind = {}

blackwind.normal = {
	a = { fg = colors.blackwind1_gui, bg = colors.blackwind9_gui },
	b = { fg = colors.blackwind5_gui, bg = colors.blackwind2_gui },
	c = { fg = colors.blackwind4_gui, bg = colors.blackwind1_gui },
}

blackwind.insert = {
	a = { fg = colors.blackwind1_gui, bg = colors.blackwind4_gui },
	b = { fg = colors.blackwind6_gui, bg = colors.blackwind2_gui },
	y = { fg = colors.blackwind5_gui, bg = colors.blackwind2_gui },
}

blackwind.visual = {
	a = { fg = colors.blackwind0_gui, bg = colors.blackwind7_gui },
	b = { fg = colors.blackwind4_gui, bg = colors.blackwind2_gui },
	y = { fg = colors.blackwind5_gui, bg = colors.blackwind2_gui },
}

blackwind.replace = {
	a = { fg = colors.blackwind0_gui, bg = colors.blackwind11_gui },
	b = { fg = colors.blackwind4_gui, bg = colors.blackwind2_gui },
	y = { fg = colors.blackwind5_gui, bg = colors.blackwind2_gui },
}

blackwind.command = {
	a = { fg = colors.blackwind0_gui, bg = colors.blackwind15_gui, gui = "bold" },
	b = { fg = colors.blackwind4_gui, bg = colors.blackwind2_gui },
	y = { fg = colors.blackwind5_gui, bg = colors.blackwind2_gui },
}

blackwind.inactive = {
	a = { fg = colors.blackwind4_gui, bg = colors.blackwind0_gui, gui = "bold" },
	b = { fg = colors.blackwind4_gui, bg = colors.blackwind0_gui },
	c = { fg = colors.blackwind4_gui, bg = colors.blackwind1_gui },
}

return blackwind
