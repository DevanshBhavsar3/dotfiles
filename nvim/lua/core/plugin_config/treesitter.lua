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
		"json",
		"markdown_inline",
		"query",
		"vim",
		"vimdoc",
		"sql",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua", "go", "typescript", "json", "yml", "yaml", "sql" },
	callback = function()
		vim.treesitter.start()
	end,
})
