return {
  "oribarilan/lensline.nvim",
  tag = "2.0.0", -- or: branch = 'release/2.x' for latest non-breaking updates
  event = { "BufReadPost", "BufNewFile" },
  lazy = true,
  config = function()
    require("lensline").setup()
  end,
}
