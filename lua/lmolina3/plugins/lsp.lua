return {
  {
    "mason-org/mason-lspconfig.nvim",

    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {},
      },

      "neovim/nvim-lspconfig",
      "saghen/blink.cmp",
    },

    opts = {
      ensure_installed = {
        "clangd",
        "pyright",
        "ruff",
      },

      automatic_enable = {
        "clangd",
        "pyright",
        "ruff",
      },
    },

    config = function(_, opts)
      -- Advertise Blink's completion features to every LSP server.
      vim.lsp.config("*", {
        capabilities = require("blink.cmp").get_lsp_capabilities(),
      })

      -- Pyright supplies Python hover/type information.
      -- Disable Ruff hover so the two servers do not compete.
      vim.lsp.config("ruff", {
        on_attach = function(client)
          client.server_capabilities.hoverProvider = false
        end,
      })

      require("mason-lspconfig").setup(opts)

      local group = vim.api.nvim_create_augroup(
        "lmolina3-lsp-keymaps",
        { clear = true }
      )

      vim.api.nvim_create_autocmd("LspAttach", {
        group = group,

        callback = function(event)
          local function map(lhs, rhs, description)
            vim.keymap.set("n", lhs, rhs, {
              buffer = event.buf,
              desc = description,
            })
          end

          map("gd", vim.lsp.buf.definition, "Go to definition")
          map("gD", vim.lsp.buf.declaration, "Go to declaration")
          map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
          map("<leader>ca", vim.lsp.buf.code_action, "Code action")
          map("<leader>ld", vim.diagnostic.open_float, "Line diagnostics")
        end,
      })
    end,
  },
}
