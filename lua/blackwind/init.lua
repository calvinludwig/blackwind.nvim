-- Colorscheme name:    blackwind.nvim
-- Description:         Dark gray theme based on tailwind color pallete
-- Author:              https://github.com/calvinludwig

local util = require("blackwind.util")

-- Load the theme
local set = function()
	util.load()
end

return { set = set }
