vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'gruvbox-community/gruvbox'
  use 'neovim/nvim-lspconfig'

  use 'Shougo/ddc.vim'
  use 'vim-denops/denops.vim'
  use 'delphinus/ddc-treesitter'
  use 'Shougo/ddc-nvim-lsp'

  use 'Shougo/ddc-matcher_head'
  use 'Shougo/ddc-sorter_rank'

  use 'nicwest/vim-camelsnek'
end)
