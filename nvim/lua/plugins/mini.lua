return {
  "nvim-mini/mini.nvim",
  enabled = false,
  version = "*",
  config = function()
    -- Custom colourscheme reflecting my shell prompt
    require("mini.hues").setup({
      foreground = "#7DF9AA",
      background = "#030B16",
      n_hues = 6,
      saturation = "high",
    })
  end,
}
