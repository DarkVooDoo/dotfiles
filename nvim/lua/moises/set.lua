
vim.opt.nu = true

vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 10

vim.opt.colorcolumn = "130"

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 150 }
  end,
})

vim.opt.clipboard = "unnamedplus"

vim.g.lightline = {
    colorscheme = 'wombat',
    active = {
        left = {{'mode', 'paste', 'gitbranch'}, {'readonly', 'filename', 'modified'}}
    },
    component_function = {
        gitbranch = 'FugitiveHead'
    }
    -- in lua, the above line is syntactic sugar for: 
    -- ['colorscheme'] = 'catppuccin'
    -- this may be helpful if the option name has a reserved symbol in it like + or -
    -- ['key-here'] = 'value'
}

vim.cmd.colorscheme("solarized-osaka")
