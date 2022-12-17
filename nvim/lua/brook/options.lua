function apply(settings)
	local set = vim.opt
	for option, value in pairs(settings) do
		set[option] = value
	end
end

local settings = {

    -- line numbers
	number  = true,
	relativenumber = true,

    -- tabs & indentation
    tabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    autoindent = true,

    -- line wrapping
    wrap =  true,
 	encoding = "utf-8",
 	fileencoding =  "utf-8",

    -- search settings
    ignorecase = true,
    smartcase = true,

    
    -- cursor line
    cursorline = true,
    
    -- appearance 
    termguicolors = true,
	signcolumn = "yes",
	syntax = "on",
    
    --clipboard
 	swapfile = false,
    clipboard = "unnamedplus",

    -- split window
    splitright = true,
    splitbelow = true,

    laststatus = 3,
-- 	mouse = "a",
-- 	preserveindent = true,
-- 	copyindent = true,
-- 	smartindent = true,
-- 	smarttab = true,
-- 	expandtab = true,
-- 	clipboard = "unnamedplus",
-- 	completeopt = { "menuone" , "noselect" },
-- 
-- --	fillchars = {eob = " "},
}

apply(settings)
