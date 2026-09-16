return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 500,
    },
  },
  keys = {
    { "]h", "<cmd>Gitsigns next_hunk<cr>", desc = "Next Git hunk" },
    { "[h", "<cmd>Gitsigns prev_hunk<cr>", desc = "Previous Git hunk" },
    { "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview Git hunk" },
    { "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Stage Git hunk" },
    { "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Reset Git hunk" },
    { "<leader>gb", "<cmd>Gitsigns blame_line<cr>", desc = "Git blame line" },
  },
}
