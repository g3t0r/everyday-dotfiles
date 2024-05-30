vim.g.mapleader = " "
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>`", "<C-^>")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
