require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "gopls", "ts_ls" },
})
require("lspsaga").setup({
	symbol_in_winbar = {
		enable = false,
	},
	lightbulb = {
		enable = false,
	},
})

local servers = { "lua_ls", "gopls", "ts_ls" }
local capabilities = require("cmp_nvim_lsp").default_capabilities()

for _, name in ipairs(servers) do
	vim.lsp.config(name, {
		capabilities = capabilities,
	})

	vim.lsp.enable(name)
end

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf
		local opts = { buffer = bufnr }

		vim.keymap.set("n", "<leader>j", "<Cmd>Lspsaga diagnostic_jump_next<cr>", opt)
		vim.keymap.set("n", "<leader>k", "<Cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
		vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<cr>", opts)
		vim.keymap.set("n", "gd", "<Cmd>Lspsaga goto_definition<cr>", opts)
		vim.keymap.set("n", "gt", "<Cmd>Lspsaga goto_type_definition<cr>", opts)
		vim.keymap.set("n", "<leader>lf", "<Cmd>Lspsaga finder<cr>", opts)
		vim.keymap.set("n", "<leader>r", "<Cmd>Lspsaga rename<cr>", opts)
		vim.keymap.set("n", "<leader>ca", "<Cmd>Lspsaga code_action<CR>", opts)
		vim.keymap.set("n", "<leader>gi", "<Cmd>Lspsaga goto_implementation<CR>", opts)
		vim.keymap.set("n", "<leader>gr", require("telescope.builtin").lsp_references, opt)
	end,
})
