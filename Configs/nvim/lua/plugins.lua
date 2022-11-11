local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    require = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'L3MON4D3/LuaSnip' -- Snippet
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- VSCode like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cpm source for buffer words 
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cpm source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
  }  
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate' 
  }
end)
