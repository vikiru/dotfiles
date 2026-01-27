return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "tsgo",
      "oxlint",
      "biome",
    },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
