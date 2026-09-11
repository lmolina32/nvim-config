return {
	{
		"saghen/blink.cmp",

		-- Stay on stable v1 while v2 is under active development.
		version = "1.*",

		dependencies = {
			"rafamadriz/friendly-snippets",
		},

		opts = {
			keymap = {
				preset = "enter",
				-- preset = "default",
				-- preset = "super-tab"
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = {
				documentation = {
					auto_show = true,
				},
			},

			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
					"buffer",
				},
			},

			fuzzy = {
				implementation = "prefer_rust_with_warning",
			},

			signature = {
				enabled = true,
			},
		},

		opts_extend = {
			"sources.default",
		},
	},
}
