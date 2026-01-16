return {
  "axelvc/template-string.nvim",
  opts = {},
  ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  config = function()
    require("template-string").setup()
  end,
}
