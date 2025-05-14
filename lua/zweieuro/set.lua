-- vim.opt.guicursor = ""
vim.g.mapleader = " "
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true -- enable icons

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true -- Save undo history

vim.opt.hlsearch = false
vim.opt.incsearch = true
-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Dispaly settings for whitespace chars

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Show which line your cursor is on
vim.o.cursorline = true

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})