return {
  {
    "saghen/blink.compat",
    version = "*",
    lazy = true, -- Automatically loads when required by blink.cmp
    opts = {},
  },
  {
    "saghen/blink.pairs",
    enabled = false,
    version = "*", -- (recommended) only required with prebuilt binaries

    -- download prebuilt binaries from github releases
    dependencies = "saghen/blink.download",
    -- OR build from source
    -- build = "cargo build --release",
    -- -- OR build from source with nix
    -- build = 'nix build .#build-plugin',

    --- @module 'blink.pairs'
    --- @type blink.pairs.Config
    opts = {
      mappings = {
        -- you can call require("blink.pairs.mappings").enable() and require("blink.pairs.mappings").disable() to enable/disable mappings at runtime
        enabled = true,
        -- see the defaults: https://github.com/Saghen/blink.pairs/blob/main/lua/blink/pairs/config/mappings.lua#L10
        pairs = {},
      },
      highlights = {
        enabled = true,
        groups = {
          "BlinkPairsOrange",
          "BlinkPairsPurple",
          "BlinkPairsBlue",
        },
        matchparen = {
          enabled = true,
          group = "MatchParen",
        },
      },
      debug = false,
    },
  },
  {
    "saghen/blink.cmp",
    dependencies = {
      { "L3MON4D3/LuaSnip", version = "v2.*" },
      "saghen/blink.compat",
      "Exafunction/windsurf.nvim",
      "moyiz/blink-emoji.nvim",
    },
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      fuzzy = {
        implementation = "prefer_rust_with_warning",
        sorts = {
          "exact",
          -- defaults
          "score",
          "sort_text",
        },
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
        default = { "lsp", "path", "snippets", "buffer", "emoji" },
        providers = {
          -- codeium = { name = "Codeium", module = "codeium.blink", async = true },
          emoji = {
            module = "blink-emoji",
            name = "Emoji",
            score_offset = 15, -- Tune by preference
            opts = { insert = true }, -- Insert emoji (default) or complete its name
            should_show_items = function()
              return vim.tbl_contains(
                -- Enable emoji completion only for git commits and markdown.
                -- By default, enabled for all file-types.
                { "gitcommit", "markdown" },
                vim.o.filetype
              )
            end,
          },
        },
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
