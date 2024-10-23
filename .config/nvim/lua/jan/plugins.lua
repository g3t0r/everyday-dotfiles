vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'lervag/vimtex'
  use { "ellisonleao/gruvbox.nvim" }
  use "blazkowolf/gruber-darker.nvim"
  use {'nvim-orgmode/orgmode', config = function()
    require('orgmode').setup{
      org_agenda_files = {'~/docs/org/*'},
      org_default_notes_file = '~/docs/org/refile.org'
    }
  end
}
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

end)
