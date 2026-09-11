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
      },

      format_on_save = {
        timeout_ms = 1000,
        lsp_format = "fallback",
      },
    },
  },
}
