return {
	"saghen/blink.cmp",

	event = "VimEnter",
	dependencies = {
		"folke/lazydev.nvim",
	},
	opts = {
		keymap = {
			preset = "enter",
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			trigger = { show_on_trigger_character = true },
			list = {
				selection = { preselect = true, auto_insert = false },
			},
			documentation = { auto_show = false, auto_show_delay_ms = 500 },
			menu = {
				draw = {
					columns = {
						{ "label", gap = 1 },
						{ "label_description" },
						{ "kind" },
					},
				},
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer", "lazydev" },
			providers = {
				lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
			},
		},
		fuzzy = { implementation = "lua" },
		signature = { enabled = true },
	},
}
