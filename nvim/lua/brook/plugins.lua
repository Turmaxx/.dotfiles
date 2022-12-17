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


-- Plugins
return packer.startup(function(use)
	
	-- Dependencies
	use {
		"wbthomason/packer.nvim",
		"nvim-lua/popup.nvim",
		"nvim-lua/plenary.nvim",
		"kyazdani42/nvim-web-devicons",
  	}	

	-- CMP and LSP (Completion and Language Server Protocol)
    use {

        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
	    "hrsh7th/cmp-path",
	    "hrsh7th/cmp-cmdline",
	    "hrsh7th/cmp-nvim-lsp",
	    "hrsh7th/cmp-nvim-lua",
	    "saadparwaiz1/cmp_luasnip", 

		"neovim/nvim-lspconfig",
		"williamboman/nvim-lsp-installer",

        "L3MON4D3/LuaSnip", 
	    "rafamadriz/friendly-snippets",
    }

    -- Colorscheme
    use "navarasu/onedark.nvim"

	-- Utils
	use {

		"kyazdani42/nvim-tree.lua",
		"nvim-telescope/telescope.nvim",

        "goolord/alpha-nvim",
        "nvim-lualine/lualine.nvim",
        "lewis6991/impatient.nvim",
    
		"andweeb/presence.nvim",
        "wakatime/vim-wakatime",


        "akinsho/nvim-toggleterm.lua",
        "terrortylor/nvim-comment",
        "norcalli/nvim-colorizer.lua",
        "windwp/nvim-autopairs",

	}
    
    -- Git
    use {
        "lewis6991/gitsigns.nvim",
    }



	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
