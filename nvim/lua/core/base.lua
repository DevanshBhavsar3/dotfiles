vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.title = true
vim.opt.cmdheight = 1
vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.scrolloff = 15

-- Tabs & Spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.breakindent = true

vim.opt.clipboard:append({ "unnamedplus" })

-- Highlights
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
vim.opt.pumblend = 5
vim.opt.background = "dark"

-- Vertical line
vim.opt.colorcolumn = "80"
vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg = "lightgrey", bg = "lightgrey" })

vim.wo.number = true
vim.opt.relativenumber = true

vim.opt.backup = false
vim.opt.backupskip = "/tmp/*,/private/tmp/*"

vim.opt.shell = "zsh"

vim.opt.ignorecase = true

vim.opt.si = true
vim.opt.wrap = false

vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })

vim.opt.termguicolors = true

vim.diagnostic.config({
	virtual_text = false,
	signs = false,
	underline = true,
})

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Netrw config
vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_list_hide = "(^|ss)\zs.S+"
vim.g.netrw_localcopydircmd = "cp -r"
vim.api.nvim_set_hl(0, "netrwMarkFile", { link = "Search" })
