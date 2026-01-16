return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        servers = {
            -- Disabled
            ts_ls = { enabled = false },
            vtsls = { enabled = false },
            tsserver = { enabled = false },
            pyright = { enabled = false },
            ty = { enabled = false },

            -- Python
            -- ty = {},
            pyrefly = {},
            zuban = {},
            basedpyright = {},

            -- Bash
            bashls = {},

            -- CSS
            tailwindcss = {},
            cssls = {},

            -- Docker
            docker_compose_language_service = {},
            dockerfile_language_server = {},

            -- JavaScript / TypeScript
            astro = {},
            mdx_analyzer = {},
            graphql_language_service_cli = {},

            -- GitHub Actions
            gh_actions= {},

            -- HTML
            html = {},

            -- Java
            jdtls = {},

            -- JSON
            jsonls = {},

            -- XML
            lemminx = {},

            -- Lua
            lua_ls = {},

            -- Markdown
            marksman = {},

            -- Prisma
            prisma = {},

            -- SQL
            sqlls = {},

            -- TOML
            taplo = {},
            tombi = {},

            -- YAML
            yamlls = {},

            -- Linting/Formatters
            biome = {},
            ruff = {},
        },
    },
}
