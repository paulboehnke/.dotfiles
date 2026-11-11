-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({ 'projekt0n/github-nvim-theme' })

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use('tpope/vim-fugitive')

  use('tpope/vim-surround')

  use 'hrsh7th/nvim-cmp'  -- Completion engine
  use 'hrsh7th/cmp-nvim-lsp'  -- LSP completion source for nvim-cmp

  use 'nvim-lualine/lualine.nvim'

  use 'lewis6991/gitsigns.nvim'

  -- automatic adjustment of shiftwidth and expandtab based on existing code
  use 'tpope/vim-sleuth'
end)
