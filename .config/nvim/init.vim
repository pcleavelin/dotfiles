let plugins_dir = '~/.config/nvim/plugins'
if empty(glob(plugins_dir . '/plug/plug.vim'))
  silent execute '!curl -fLo '.plugins_dir.'/plug/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync
endif

call plug#begin(plugins_dir.'')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'

call plug#end()

set number
set relativenumber

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 

set smartcase
set ignorecase
set incsearch

set nowrap
set nohlsearch
set noerrorbells
set hidden

set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

set scrolloff=16
set colorcolumn=80
set signcolumn=yes
set cmdheight=2

lua require('lsp')

colorscheme gruvbox

let mapleader = " "
nnoremap <leader>f :Files<Enter>
nnoremap <leader>r :Rg<Enter>

nnoremap gh 0
nnoremap gl $
nnoremap gk gg
nnoremap gj G
