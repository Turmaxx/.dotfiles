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
    laststatus = 2,                                 -- always display the status bar
    wildmenu = true,                                -- display completion matches in a status line (press da Tab)
    mouse = "a",                                    -- enable mouse for scrolling and resizing (allow mouse to be used)
    pumheight = 15,                                 -- Makes popup menu smaller
    ruler = true,                                   -- Show the cursor position all the time
    splitbelow = true,                              -- Horizontal splits will automatically be below
    splitright = true,                              -- Vertical splits will automatically be to the right
    conceallevel = 0,                               -- So that I can see `` in markdown files
    virtualedit = "onemore",                        -- With This option you can move the cursor one character over the end
    -- termguicolors = true,                           -- set term gui colors (most terminals support this)
    laststatus  = 2,                                -- Always display the status line
    title = true,                                   -- Show current txt that you editing
    relativenumber = false,                         -- Vim’s absolute, relative and hybrid line numbers
    -- cursorline = true,                           -- Enable highlighting of the current line
    cmdheight = 1,                                  -- More space for displaying messages
    numberwidth = 5,                                -- set number column width to 2 {default 4}
    showtabline = 1,                                -- Always show tabs
    
    -----------------------
    -- Indentation
    -----------------------
    shiftwidth = 4,                                 -- number of spaces inserted for each indentation
    tabstop = 4,                                    -- indent using 4 spaces
    autoindent = true,                              -- new lines inherit the indentation of previous lines
    smartindent = true,                             -- Makes indenting smart
    smarttab = true,                                -- Makes tabbing smarter will realize you have 2 vs 4
    expandtab = true,                               -- Converts tabs to spaces
    
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
    -- updatetime = 700,                            -- ms to wait for trigger an event

    -----------------------
    -- Other
    -----------------------
    updatetime = 0,                                 -- faster completion (4000ms default)
    swapfile = false,                               -- create a swapfile
    backup = false,                                 -- create a backup file
    clipboard = "unnamedplus",                      -- allows neovim to access the system clipboard
    
}
-- cmd [[set noshowmode]]                           -- We don't need to see things like -- INSERT -- anymore
-- cmd [[syntax on]]                                -- Enables syntax highlighing
cmd [[set t_Co=256]]                                -- Support 256 colors
cmd [[set whichwrap+=<,>,[,],h,l"]]                 -- Breaks Space-Time Continuum
cmd [[set nowrap]]                                  -- Display long lines as just one line
cmd [[set nobackup]]                                -- creates a backup file
cmd [[set nowritebackup]]                           -- creates a backup file i guess
cmd [[set formatoptions-=cro]]                      -- Stop newline continution of comments
cmd [[set complete+=kspell]]                        -- auto complete with spellcheck
cmd [[set completeopt=menuone,longest]]             -- auto complete menu (It's pretty great)
cmd [[set nocompatible]]                            -- Disable compatibility to old-time vi

apply(settings)
