set number                      " Added Numbers
set tabstop=4                   " Indentation 4 Spaces
set autoindent                  " autoindent
set noexpandtab
set laststatus=2
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on 
syntax on


" vim-plug
call plug#begin('~/.config/nvim/vim-plug')
" Plugins
Plug 'wakatime/vim-wakatime'  	" wakatime
Plug 'itchyny/lightline.vim'	" lightlime
Plug 'morhetz/gruvbox'			" gruvbox
Plug 'scrooloose/syntastic'   	" syntax
Plug 'andweeb/presence.nvim'    " discord rpc
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Finder
Plug 'sheerun/vim-polyglot'		" syntaxing for languages
Plug 'jiangmiao/auto-pairs' 		" auto bracket pairing
" Plug 'nvim-lua/plenary.nvim' 	" TeleScope
" Plug 'nvim-telescope/telescope.nvim' "TeleScope
" Plug 'preservim/nerdtree'     "Nerd Tree
call plug#end()



" GruvBox
colorscheme gruvbox
let g:gruvbox_contrast_dark  = '(medium)'
