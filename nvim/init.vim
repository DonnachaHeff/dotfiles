call plug#begin('~/.vim/plugged')

" lsp config
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" colorscheme
Plug 'gruvbox-community/gruvbox'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'tjdevries/gruvbuddy.nvim'

" tree sitter - the one for the languages
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-lua/plenary.nvim'

" statusline
Plug 'hoob3rt/lualine.nvim'
" Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

" sets
set relativenumber
set nohlsearch
set hidden
set noerrorbells  
set tabstop=4 softtabstop=4	
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set cmdheight=1
set colorcolumn=80

" theme
colorscheme gruvbox

" lua config files
lua require("donnachaheff")

" super
let mapleader = " "

