local set = vim.opt
local cmd = vim.cmd

function apply(settings)
    for option, value in pairs(settings) do
        set[option] = value
    end
end

local settings = {
    -----------------------
    -- User Interface
    -----------------------
    number = true,                                  -- show line numbers on the sidebar
    wildmenu = true,                                -- display completion matches in a status line (press da Tab)
    mouse = "a",                                    -- enable mouse for scrolling and resizing (allow mouse to be used)
    pumheight = 10,                                 -- Height of the pop up menu 
    ruler = true,                                   -- Show the cursor position all the time
    splitbelow = true,                              -- Horizontal splits will automatically be below
    splitright = true,                              -- Vertical splits will automatically be to the right
    conceallevel = 0,                               -- So that I can see `` in markdown files
    virtualedit = "onemore",                        -- With This option you can move the cursor one character over the end
    -- termguicolors = true,                           -- set term gui colors (most terminals support this)
    laststatus  = 3,                                -- Always display the status line
    -- title = true,                                   -- Show current txt that you editing
    relativenumber = false,                         -- Vim’s absolute, relative and hybrid line numbers
    -- cursorline = true,                           -- Enable highlighting of the current line
    -- cmdheight = 1,                                  -- More space for displaying messages
    -- numberwidth = 5,                                -- set number column width to 2 {default 4}
    -- showtabline = 1,                                -- Always show tabs
    -- showmode = false,                               -- Disable showing modes in the on/under status line 
    
    -----------------------
    -- Indentation
    -----------------------
    shiftwidth = 4,                                 -- number of spaces inserted for each indentation
    tabstop = 4,                                    -- indent using 4 spaces
    autoindent = true,                              -- new lines inherit the indentation of previous lines
    smartindent = true,                             -- Makes indenting smart
    smarttab = true,                                -- Makes tabbing smarter will realize you have 2 vs 4
    expandtab = true,                               -- Converts tabs to spaces
    copyindent = true,                              -- copy the previous indentation on autoindenting
    -- signcolumn = "yes",                             -- Always show the sign column
    preserveindent = true,                          -- Preserve indent structure as much as possible                          
    
    -----------------------
    -- Search
    -----------------------
    smartcase = true,                               -- automatically switch search to case-sensitive when search-query contains an uppercase letter
    ignorecase = true,                              -- ignore case in search patterns
    hlsearch = true,                                -- highlight all matches on previous search pattern
    incsearch = true,                               -- sets incremental search
    autochdir = true,                               -- Your working directory will always be the same as your working directory

    -----------------------
    -- Text Rendering 
    -----------------------
    encoding = "utf-8",                             -- use an encoding that supports unicode
    fileencoding = "utf-8",                         -- the encoding written to file
    wrap = false,                                   -- display lines as one long line
    syntax = "on",                                  -- syntax highlighting
    
    -----------------
    -- Memory, CPU --
    -----------------
    hidden = true,                                  -- Required to keep multiple buffers open multiple buffers
    timeoutlen = 500,                               -- By default timeoutlen is 1000 ms
    lazyredraw = true,                              -- Disable lazyredraw
    synmaxcol = 240,                                -- Max column for syntax highlight

    -----------------------
    -- Window 
    -----------------------
    splitbelow = true,                              -- Splitting a new window below the current one
    splitright = true,                              -- Splitting a new window at the right of the current one

    -----------------------
    -- Other
    -----------------------
    updatetime = 300,                               -- length of time to wait before trigerring plugins 
    swapfile = false,                               -- create a swapfile
    clipboard = "unnamedplus",                      -- allows neovim to access the system clipboard
    writebackup = false,                            -- Disable making a backup before overwriting a file
    completeopt = {"menuone", "noselect"},          -- options for insert mode completion
    -- fillchars = {eob = " "},                        -- Disable `~` on nonexistent lines
}


apply(settings)
