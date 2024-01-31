-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function() 
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use "scottmckendry/cyberdream.nvim"

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }
  use('nvim-treesitter/playground')

  use('ThePrimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use('tpope/vim-surround')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }

  use 'nvim-lualine/lualine.nvim'

  use 'lewis6991/gitsigns.nvim'

  --DB
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-completion'

  use 'tpope/vim-sleuth'

  use {
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/work",
                        },
                    },
                },
            },
        }
    end,
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
  }

end)
