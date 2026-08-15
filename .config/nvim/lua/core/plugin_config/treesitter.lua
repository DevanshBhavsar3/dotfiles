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
        "cpp",
        "prisma",
        "templ",
        "astro"
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua", "go", "ts", "json", "yml", "yaml", "sql", "svelte", "html", "css", "cpp", "prisma", "templ", "astro" },
	callback = function()
		vim.treesitter.start()
	end,
})
