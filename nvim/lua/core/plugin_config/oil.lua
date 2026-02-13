vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("oil").setup()

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
