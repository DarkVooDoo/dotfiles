vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "<C-b>", "{}<LEFT><CR><CR><kUp><Tab>")
vim.keymap.set("i", "\"", "\"\"<LEFT>") 
vim.keymap.set("i", "(", "()<LEFT>")
vim.keymap.set("i", "{", "{}<LEFT>")
vim.keymap.set("i", "[", "[]<LEFT>")
vim.keymap.set("n", "<leader>pt", "<Cmd>wa<CR>")


vim.keymap.set("n", "<leader>ib", "=%")
vim.keymap.set("n", "<leader>jm", "`a")
vim.keymap.set("n", "<leader>pe", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>ne", vim.diagnostic.goto_next)

