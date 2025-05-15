return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>tt",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>tn",
      "<cmd>Trouble next skip_groups = true, jump = true<cr>",
      desc = "Trouble next",
    },
    {
      "<leader>tp",
      "<cmd>Trouble prev skip_groups = true, jump = true<cr>",
      desc = "Trouble previous",
    },
  },
}