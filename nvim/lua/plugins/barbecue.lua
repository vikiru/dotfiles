return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  event = { "BufReadPost", "BufNewFile" },
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    -- configurations go here
    show_dirname = false,
    show_basename = false,
  },
}
