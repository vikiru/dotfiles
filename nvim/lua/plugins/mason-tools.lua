return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason-org/mason.nvim" },
  opts = {
    ensure_installed = {
      -- LSPs

      -- Python
      "ty",
      "pyrefly",
      "zuban",
      "basedpyright",

      -- Bash
      "bash-language-server",

      -- CSS
      "tailwindcss-language-server",
      "css-lsp",

      -- Docker
      "docker-compose-language-service",
      "dockerfile-language-server",

      -- JavaScript / TypeScript
      -- "vtsls",
      "mdx-analyzer",
      "graphql-language-service-cli",
      "tsgo",
      "astro-language-server",

      -- GitHub Actions
      "gh-actions-language-server",

      -- HTML
      "html-lsp",

      -- Java
      "jdtls",

      -- JSON
      "json-lsp",

      -- XML
      "lemminx",

      -- Lua
      "lua-language-server",

      -- Markdown
      "marksman",

      -- Prisma
      "prisma-language-server",

      -- SQL
      "sqlls",

      -- Tailwind CSS
      "tailwindcss-language-server",

      -- YAML
      "yaml-language-server",

      -- DAPs

      -- C/C++ and Rust
      "codelldb",

      -- Python
      "debugpy",

      -- Java
      "java-debug-adapter",

      -- Linters

      -- Shell
      "dotenv-linter",
      "shellcheck",

      -- YAML
      "yamllint",

      -- Python
      "ruff",

      -- Java
      "checkstyle",

      -- Formatters

      -- Shell
      "shfmt",

      -- YAML
      "yamlfmt",

      -- TOML
      "taplo",
      "tombi",

      -- Lua
      "stylua",

      -- XML
      "xmlformatter",

      -- SQL
      "sqlfluff",

      -- Java
      -- "google_java_format",

      -- JavaScript / TypeScript / CSS / JSON / HTML / Markdown / GraphQL
      -- "prettierd",
      -- JS/TS + more (alternative to eslint/prettier)
      "biome",
    },
    auto_update = false,
    run_on_start = false,
    integrations = {
      ["mason-lspconfig"] = false,
      ["mason-null-ls"] = false,
      ["mason-nvim-dap"] = false,
    },
  },
}
