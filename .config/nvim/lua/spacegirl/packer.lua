local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use "skywind3000/asyncrun.vim"
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'tpope/vim-fugitive'
  use 'neovim/nvim-lspconfig'
  use({
      "kylechui/nvim-surround",
      config = function()
          require("nvim-surround").setup({})
      end
  })

  use 'nvim-treesitter/nvim-treesitter'
  use 'eandrju/cellular-automaton.nvim' 
  use 'sheerun/vim-polyglot'

  use 'rose-pine/neovim'
  use 'gruvbox-community/gruvbox'
  use 'folke/tokyonight.nvim'
  use 'vim-airline/vim-airline'
  use 'kien/rainbow_parentheses.vim' 

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }

  use 'nicwest/vim-camelsnek'
  use 'LnL7/vim-nix'
  use 'evanleck/vim-svelte'

  use({
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
          require("lsp_lines").setup()
      end,
  })

  use 'mbbill/undotree'

  use '/run/media/patrick/lap_data/Documents/bbpr'
end)
