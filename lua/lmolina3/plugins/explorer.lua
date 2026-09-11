return {
	{
		"nvim-tree/nvim-tree.lua",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		keys = {
			{
				"<leader>ef",
				"<cmd>NvimTreeFocus<CR>",
				desc = "Focus file explorer",
			},
			{
				"<leader>e",
				"<cmd>NvimTreeToggle<cr>",
				desc = "Toggle file explorer",
			},
			{
				"<leader>E",
				"<cmd>NvimTreeFindFile<cr>",
				desc = "Reveal current file",
			},
		},

		opts = {
			view = {
				width = 32,
			},

			renderer = {
				group_empty = true,
			},

			filters = {
				dotfiles = false,
			},

			update_focused_file = {
				enable = true,
			},
		},
	},
}
