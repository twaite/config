return require('packer').startup(function()
  -- TODO: colorscheme setup
  use { 'sonph/onehalf', rtp = 'vim', config = function() vim.cmd [[ colorscheme onehalfdark ]] end }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
