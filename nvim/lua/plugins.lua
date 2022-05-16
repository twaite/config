return require('packer').startup(function()

  -- TODO: custom theme 
  use {
      'goolord/alpha-nvim',
      requires = { 'kyazdani42/nvim-web-devicons' },
      config = function ()
          require'alpha'.setup(require'alpha.themes.startify'.config)
      end
  }

  use {
      'kyazdani42/nvim-tree.lua',
      'nvim-lualine/lualine.nvim',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      }
  }

  use { 'tpope/vim-fugitive' }

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/nvim-lsp-installer'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  
  -- TODO move this setup
  use { "williamboman/nvim-lsp-installer" }

  use { 'sonph/onehalf', rtp = 'vim', config = function() vim.cmd [[ colorscheme onehalfdark ]] end }

  use { 'mhartington/formatter.nvim' }
  use { 'nvim-treesitter/nvim-treesitter' }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


end)
