return {
  "oribarilan/lensline.nvim",
  tag = "2.0.0",
  event = { "BufReadPost", "BufNewFile" },
  lazy = true,
  config = function()
    require("lensline").setup()
  end,
}
