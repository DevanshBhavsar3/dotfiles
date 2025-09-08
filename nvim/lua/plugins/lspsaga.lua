return {
	"nvimdev/lspsaga.nvim",
	config = function()
		local opts = { noremap = true, silent = true }

		vim.keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<cr>", opts)
		vim.keymap.set("n", "<C-k>", "<Cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
		vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<cr>", opts)
		vim.keymap.set("n", "gd", "<Cmd>Lspsaga goto_definition<cr>", opts)
		vim.keymap.set("n", "gt", "<Cmd>Lspsaga goto_type_definition<cr>", opts)
		vim.keymap.set("n", "<leader>lf", "<Cmd>Lspsaga finder<cr>", opts)
		vim.keymap.set("n", "<leader>r", "<Cmd>Lspsaga rename<cr>", opts)

		require("lspsaga").setup({
			symbol_in_winbar = {
				enable = false,
			},
			ui = {
				code_action = "",
			},
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}
