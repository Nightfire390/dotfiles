-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      -- or , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'olivercederborg/poimandres.nvim' }

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
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use 'nvim-tree/nvim-web-devicons'
  use 'theprimeagen/harpoon'
  use 'tpope/vim-fugitive'
  use 'water-sucks/darkrose.nvim'
  use 'slugbyte/lackluster.nvim'
  use 'ntk148v/komau.vim'
  use {
    "jesseleite/nvim-noirbuddy",
    requires = { "tjdevries/colorbuddy.nvim" }
  }
end)
