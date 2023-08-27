-- init.lua

-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Treesitter configuration
require('nvim-treesitter.configs').setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop,
  -- highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    -- Required for spellcheck, some LaTex highlights and
    -- code block highlights that do not have ts grammar
    additional_vim_regex_highlighting = { 'org' },
  },
  ensure_installed = { 'org' }, -- Or run :TSUpdate org
}

require('orgmode').setup({
  org_agenda_files = { '~/notes/org/*' },
  org_default_notes_file = '~/notes/org/refile.org',
  mappings = {
    global = {
      org_agenda = { '<leader>na' },
      org_capture = { '<leader>nc' }
    },
    capture = {
      org_capture_refile = 'R'
    }
  },
  org_capture_templates = {
    j = {
      description = 'Journal',
      template = '\n*** [%<%Y-%m-%d>] \n**** [%<%H:%M>]%?',
      target = '~/notes/org/journal.org'
    },
    t = { description = 'Task', template = '* TODO %?\n  %u' }
  }
})
