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

  use({ 'rose-pine/neovim', as = 'rose-pine' ,
  config = function() 
	  vim.cmd('colorscheme rose-pine')
  end
})


  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('github/copilot.vim')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use("williamboman/mason.nvim", {run = ":MasonUpdate"})
  use("williamboman/nvim-lsp-installer")
  use("williamboman/nvim-lspconfig")
  use("williamboman/mason-lspconfig.nvim")

  use { 'mhartington/formatter.nvim' }
end)
