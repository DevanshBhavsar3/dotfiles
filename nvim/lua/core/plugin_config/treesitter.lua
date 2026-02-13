require("nvim-treesitter.config").setup({
	ensure_installed = {
		"typescript",
		"tsx",
		"css",
		"go",
		"diff",
		"html",
		"lua",
		"luadoc",
		"markdown",
		"markdown_inline",
		"query",
		"vim",
		"vimdoc",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua", "go", "typescript" },
	callback = function()
		vim.treesitter.start()
	end,
})
