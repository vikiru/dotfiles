return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ts_ls = { enabled = false },
      vtsls = { enabled = false },
      tsserver = { enabled = false },
      pyright = { enabled = false },
      ty = { enabled = false },
    },
  },
}
