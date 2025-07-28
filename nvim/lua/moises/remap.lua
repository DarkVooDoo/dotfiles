vim.g.mapleader = " "
vim.keymap.set("i", "<C-b>", "{}<LEFT><CR><CR><kUp><Tab>")
vim.keymap.set("i", "\"", "\"\"<LEFT>") 
vim.keymap.set("i", "(", "()<LEFT>")
vim.keymap.set("i", "{", "{}<LEFT>")
vim.keymap.set("i", "[", "[]<LEFT>")


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pt", "<Cmd>wa<CR>")
vim.keymap.set("n", "<leader>ib", "=%")
vim.keymap.set("n", "<leader>jm", "`a")
vim.keymap.set("n", "<leader>pe", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>ne", vim.diagnostic.goto_next)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<leader>r", function()
    local text = vim.fn.expand('<cword>')
    local phrase = vim.fn.input("Replace: ")
    vim.cmd("%s/" .. text .. "/" .. phrase .."/gc")
end)
