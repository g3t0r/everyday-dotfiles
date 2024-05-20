
vim.cmd('set rnu')
vim.cmd('set nu')
-- vim.cmd('set clipboard+=unnamedplus')

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- vim.opt.termguicolors = true

vim.opt.scrolloff = 8
--vim.opt.signcolumn = "yes"
--vim.opt.isfname:append("@-@")

--vim.opt.updatetime = 50

--vim.opt.colorcolumn = "80"

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
