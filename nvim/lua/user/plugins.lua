local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
        return require("packer.util").float { border = "rounded" }
        end,
    },
}



-- Plugins here
return packer.startup(function(use)
    -- Dependicies
    use {  
        "wbthomason/packer.nvim",                     -- packer itself
        "nvim-lua/popup.nvim",                        -- An implementation of the Popup API from vim in Neovim
        "nvim-lua/plenary.nvim",                      -- Useful lua functions used by lots of plugins
        "kyazdani42/nvim-web-devicons",               -- Lua fork of vim-web-devicons for neovim
    }

    -- Bunch of Plugins
    use {
        -- Completion
        "hrsh7th/nvim-cmp",                           -- completion plugin for neovim coded in Lua
        "hrsh7th/cmp-buffer",                         -- Nvim-cmp source for buffer words
        "hrsh7th/cmp-path",                           -- nvim-cmp source for path

        -- Nvim-Tree, Lualine, Alpha Dashboard
        "kyazdani42/nvim-tree.lua",                   -- A file explorer tree for neovim written in lua
        "goolord/alpha-nvim",                         -- lua powered greeter like vim-startify / dashboard-nvim
        "nvim-lualine/lualine.nvim",                  -- Fast and easy statusline for neovim 


        -- Toggleterm, Commentary, Colorizer
        "akinsho/nvim-toggleterm.lua",                -- Plugin to easily toggle a terminal
        "terrortylor/nvim-comment",                   -- Comment toggler for Neovim written in Lua
        "norcalli/nvim-colorizer.lua",                -- Colors highlighter for neovim

        

        -- Impatient, Smooth Scrolling
        "lewis6991/impatient.nvim",                   -- Speed up loading Lua modules to improve startup time
        "karb94/neoscroll.nvim",                      -- Smooth scrolling plugin written in lua
        
        -- Discord
        "andweeb/presence.nvim",                      -- Discord RPC
    
        -- Nord
        -- "shaunsingh/nord.nvim",                    -- Neovim theme based off of the Nord Color Palette

    }

-- Under Development check -> https://github.com/nvim-treesitter/nvim-treesitter#installation
--    -- Treesitter 
--    use {
--        "nvim-treesitter/nvim-treesitter",            -- Treesitter Syntax highlighting and abstraction layer
--        run = ":TSUpdate"
--    }
   
    -- Git
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release
    }


-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
