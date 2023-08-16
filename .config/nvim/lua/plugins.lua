-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/nvim-cmp'}
  use({ "elixir-tools/elixir-tools.nvim", tag = "stable", requires = { "nvim-lua/plenary.nvim" }})
end)
