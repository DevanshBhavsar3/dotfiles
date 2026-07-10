vim.g.loaded_netrw = 1
vim.g.loaded_netrPlugin = 1

require("oil").setup({
    keymaps = {
        ["l"] = "actions.select",
        ["h"] = "actions.parent",
        ["q"] = "actions.close",
    },
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
