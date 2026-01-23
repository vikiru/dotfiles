return {
  { "saghen/blink.compat", version = "*" },
  { "saghen/blink.pairs", enabled = false },
  {
    "saghen/blink.cmp",
    dependencies = {
      { "L3MON4D3/LuaSnip", event = "InsertEnter" },
      "saghen/blink.compat",
      "Exafunction/windsurf.nvim",
    },
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      fuzzy = {
        implementation = "prefer_rust_with_warning",
        sorts = { "exact", "score", "sort_text" },
      },
      completion = {
        menu = {
          draw = {
            columns = {
              { "kind_icon" },
              { "label", "label_description", gap = 1 },
              { "kind" },
              { "source_name" },
            },
          },
        },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
        providers = {},
      },
      signature = {
        window = {
          show_documentation = false,
        },
      },
      snippets = { preset = "luasnip" },
    },
    opts_extend = { "sources.default" },
  },
}
