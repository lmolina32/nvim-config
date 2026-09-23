return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    config = function()
      local treesitter = require("nvim-treesitter")

      treesitter.setup({})

      treesitter.install({
        "c",
        "cpp",
        "python",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "html",
        "javascript",
        "typescript",
        "tsx",
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "c",
          "cpp",
          "python",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "html",
          "javascript",
          "typescript",
          "tsx",
        },

        callback = function(event)
          pcall(vim.treesitter.start, event.buf)
        end,
      })
    end,
  },
} 
