vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'tpope/vim-fugitive'
  use 'neovim/nvim-lspconfig'
  use({
      "kylechui/nvim-surround",
      config = function()
          require("nvim-surround").setup({})
      end
  })

  use 'gruvbox-community/gruvbox'
  use 'folke/tokyonight.nvim'
  use 'vim-airline/vim-airline'
  use 'kien/rainbow_parentheses.vim' 

  use 'Shougo/ddc.vim'
  use 'vim-denops/denops.vim'
  use 'delphinus/ddc-treesitter'
  use 'Shougo/ddc-nvim-lsp'
  use 'Shougo/ddc-matcher_head'
  use 'Shougo/ddc-sorter_rank'

  use 'nicwest/vim-camelsnek'

  use({
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
          require("lsp_lines").setup()
      end,
  })

  use '/home/patrick/Documents/bbpr'
end)
