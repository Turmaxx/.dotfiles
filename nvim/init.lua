--[[---------------------------------------------]]--
--            init.lua - Init file                 --
--              Author: Brook  		               --
--[[---------------------------------------------]]--

local core_modules = {
	---- My Settings ----------------------------------
	"user/options",		--  General Settings
	"user/keymaps",		--  Custom Keymaps
    "user/plugins",		--  Plugins + Packer Config


--	---- Plugin Configurations --------------------------
	"configs/impatient",      -- Improve Startup Time
--	-- "configs/colorschemes",   -- All Colorschemes
	"configs/treesitter",     -- Syntax Highlighting
	"configs/completion",     -- Auto Completion
	"configs/alpha",          -- Welcome Screen
	"configs/nvim-tree",      -- File Explorer
	"configs/gitsigns",       -- Git Integration
	"configs/commentary",     -- Easily Comment Lines
	"configs/lualine",		  -- Status Line
--	"configs/statusline",     -- Custom Status Line
--	"configs/colorizer",      -- Colors Highlighter
	"configs/smooth-scroll",  -- Smooth Scrolling
	"configs/toggleterm",     -- Floating Terminal

}


-- Using pcall we can handle better any loading issues
for _, module in ipairs(core_modules) do
    local ok, err = pcall(require, module)
    if not ok then
      return
    end
end
