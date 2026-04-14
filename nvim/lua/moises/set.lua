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

vim.opt.colorcolumn = "160"
vim.opt.cursorlineopt = "number"

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 150 }
  end,
})

vim.opt.clipboard = "unnamedplus"

vim.api.nvim_set_hl(0, "TodoBg", {
    bg = "#f38ba8", -- couleur de fond (par exemple: Catppuccin "red")
    fg = "#1e1e2e", -- couleur du texte (par exemple: Catppuccin "base")
    bold = true,
})

-- Ajouter le match sur les TODO: dans les commentaires
vim.cmd([[match TodoBg /\v(TODO:|FIXME:)/]])
