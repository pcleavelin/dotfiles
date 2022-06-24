let plugins_dir = '~/.config/nvim/plugins'
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync
endif

call plug#begin(plugins_dir.'')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'

Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'delphinus/ddc-treesitter'
Plug 'Shougo/ddc-nvim-lsp'

Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'

call plug#end()

runtime ddc_init.vim

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
