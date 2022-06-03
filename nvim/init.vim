"     _   __                _         
"    / | / /__  ____ _   __(_)___ ___ 
"   /  |/ / _ \/ __ \ | / / / __ `__ \
"  / /|  /  __/ /_/ / |/ / / / / / / /
" /_/ |_/\___/\____/|___/_/_/ /_/ /_/ 
                                    
" NEOVIM CONFIG (~/.config/nvim/init.vim)
" -------------------------------------------------


" -------------------------------------------------
" Plugins (Plugin Manager = vim-plug [https://github.com/junegunn/vim-plug])
call plug#begin('~/.config/nvim/vim-plug')
	Plug 'wakatime/vim-wakatime'  	" wakatime
	Plug 'itchyny/lightline.vim'	" lightlime
	Plug 'scrooloose/syntastic'   	" syntax
	" Plug 'valloric/youcompleteme'	" auto completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'andweeb/presence.nvim'    " discord rpc
	" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Finder
	Plug 'sheerun/vim-polyglot'		" syntaxing for languages
	Plug 'jiangmiao/auto-pairs' 		" auto bracket pairing
	" Plug 'preservim/nerdtree'     "Nerd Tree

	" Themes
	Plug 'catppuccin/nvim', {'as': 'catppuccin'}
	Plug 'morhetz/gruvbox'			" gruvbox

call plug#end()
" -------------------------------------------------


" GruvBox
colorscheme gruvbox
let g:gruvbox_contrast_dark  = '(medium)'


" -------------------------------------------------
" General
set number                     	" Line Numbers
"set shiftwidth=4				" Shift Width 4
set tabstop=4                   " Indentation of 4 Spaces
set autoindent                  " autoindent
set noexpandtab					" 	
set laststatus=2

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

syntax on
" -------------------------------------------------
