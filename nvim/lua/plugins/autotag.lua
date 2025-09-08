return {
	"windwp/nvim-ts-autotag",
	lazy = false,
	config = function()
		require("nvim-ts-autotag").setup({
			disable_filetype = { "TelescopePrompt", "vim" },
		})
	end,
}
