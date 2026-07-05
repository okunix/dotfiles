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

vim.o.breakindent = true
vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250

vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.inccommand = 'split'

vim.o.cursorline = true

vim.opt.runtimepath:append(vim.fn.expand '~/.local/share/nvim/site')

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*/ansible*/*.yml', '*/ansible*/*.yaml', '*/roles/*.yml', '*/roles/*.yaml', '*/playbooks/*.yml', '*/playbooks/*.yaml' },
  callback = function() vim.bo.filetype = 'yaml.ansible' end,
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = {
    '*.gitlab-ci.yml',
    '*/.gitlab-ci.yml',
    '*.gitlab-ci/*.yml',
  },
  callback = function() vim.bo.filetype = 'yaml.gitlab' end,
})

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = {
    '*/.github/workflows/*.yml',
    '*/.github/workflows/*.yaml',
  },
  callback = function() vim.bo.filetype = 'yaml.github' end,
})

vim.filetype.add {
  pattern = {
    ['.*/templates/.*%.ya?ml'] = function(path, bufnr)
      -- walk up looking for Chart.yaml (or .helmignore if you prefer)
      local dir = vim.fs.dirname(path)
      local found = vim.fs.find({ 'Chart.yaml', '.helmignore' }, {
        upward = true,
        path = dir,
        stop = vim.loop.os_homedir(),
      })
      if #found > 0 then return 'helm' end
      return 'yaml'
    end,
    ['.*/templates/.*%.tpl'] = 'helm',
    ['Chart%.yaml'] = 'yaml',
    ['values%.yaml'] = 'yaml',
  },
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'yaml', 'yml', 'yml.*', 'yaml.*' },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab = true
  end,
})

vim.filetype.add {
  pattern = {
    ['.*[Mm]akefile.*'] = 'make',
    ['config.mk'] = 'make',
  },
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'make',
  callback = function()
    vim.bo.expandtab = false
    vim.bo.shiftwidth = 8
    vim.bo.tabstop = 8
  end,
})
