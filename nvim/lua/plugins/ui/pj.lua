return {
  "josephschmitt/pj.nvim",
  -- Make sure to add your chosen picker as a dependency
  dependencies = { "folke/snacks.nvim" },
  keys = { { "<leader>fp", "<cmd>Pj<cr>", desc = "Find Projects" } },
  opts = {},
}
