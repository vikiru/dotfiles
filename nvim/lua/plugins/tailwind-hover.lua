return {
  "ruicsh/tailwind-hover.nvim",
  event = { "BufReadPost", "BufNewFile" },
  keys = {
    { "<leader><s-k>", "<cmd>TailwindHover<cr>", desc = "Tailwind: Hover" },
  },
  opts = {},
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
}
