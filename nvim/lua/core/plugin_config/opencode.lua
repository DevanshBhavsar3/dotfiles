vim.g.opencode_opts = {}

vim.o.autoread = true

vim.keymap.set({ "n", "x" }, "<leader>oa", function()
	require("opencode").ask("@this: ", { submit = true })
end, { desc = "Ask opencode…" })

vim.keymap.set({ "n", "x" }, "<leader>ox", function()
	require("opencode").select()
end, { desc = "Execute opencode action…" })

vim.keymap.set({ "n", "x" }, "<leader>os", function()
	return require("opencode").operator("@this ")
end, { desc = "Add range to opencode", expr = true })
