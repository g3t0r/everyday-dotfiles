vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'lervag/vimtex'
  use { "ellisonleao/gruvbox.nvim" }
  use {'nvim-orgmode/orgmode', config = function()
    require('orgmode').setup{
      org_agenda_files = {'~/docs/org/*'},
      org_default_notes_file = '~/docs/org/refile.org'
    }
  end
}
end)
