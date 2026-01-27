return {
  "kevinhwang91/nvim-ufo",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    "kevinhwang91/promise-async",
  },
  opts = {
    close_fold_kinds_for_ft = {
      default = {
        "comment",
        "imports",
      },
    },
  },
}
