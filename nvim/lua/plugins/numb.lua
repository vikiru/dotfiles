return {
  "nacro90/numb.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("numb").setup()
  end,
}
