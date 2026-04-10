vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

--vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.local/share/nvim/undodir'
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.isfname:append '@-@'

vim.opt.updatetime = 50

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.cmdheight = 1

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function() vim.opt_local.indentexpr = '' end,
})

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.g.have_nerd_font = false

vim.o.number = true
vim.o.relativenumber = true

vim.o.mouse = 'a'

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250

vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10
