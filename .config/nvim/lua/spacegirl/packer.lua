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

  use 'vim-denops/denops.vim'
  use 'Shougo/ddc.vim'
  use 'Shougo/ddc-ui-native'
  use 'Shougo/ddc-nvim-lsp'
  use 'Shougo/ddc-matcher_head'
  use 'Shougo/ddc-sorter_rank'

  use 'nicwest/vim-camelsnek'
  use 'LnL7/vim-nix'

  use({
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
          require("lsp_lines").setup()
      end,
  })

  --use '/home/patrick/Documents/bbpr'
end)
