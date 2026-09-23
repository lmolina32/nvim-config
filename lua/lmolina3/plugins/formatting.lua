return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",

		dependencies = {
			"mason-org/mason.nvim",
		},

		opts = {
			ensure_installed = {
				"clang-format",
				"stylua",
				"ruff",
				"prettierd",
			},

			run_on_start = true,
			start_delay = 3000,
		},
	},

	{
		"stevearc/conform.nvim",

		event = {
			"BufWritePre",
		},

		cmd = {
			"ConformInfo",
		},

		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({
						async = true,
						lsp_format = "fallback",
					})
				end,
				mode = { "n", "v" },
				desc = "Format file",
			},
		},

		opts = {
			formatters_by_ft = {
				c = {
					"clang_format",
				},

				cpp = {
					"clang_format",
				},

				python = {
					"ruff_format",
				},

				lua = {
					"stylua",
				},

				html = { "prettierd" },
				css = { "prettierd" },
				scss = { "prettierd" },
				less = { "prettierd" },

				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },

				json = { "prettierd" },
				jsonc = { "prettierd" },
				yaml = { "prettierd" },
				markdown = { "prettierd" },
			},

			-- format_on_save = {
			--   timeout_ms = 1000,
			--   lsp_format = "fallback",
			-- },
		},
	},
}
