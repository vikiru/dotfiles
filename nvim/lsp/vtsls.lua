return {
  cmd = { "vtsls", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  settings = {
    experimental = {
      completion = {
        enableServerSideFuzzyMatch = true,
        entriesLimit = 20,
      },
    },
    typescript = {
      tsserver = {
        maxTsServerMemory = 6144,
      },
      preferences = {
        importModuleSpecifier = "non-relative",
        includePackageJsonAutoImports = "false",
        quoteStyle = "single",
      },
      workspaceSymbols = {
        scope = "currentProject",
      },
    },
    javascript = {
      preferences = {
        importModuleSpecifier = "non-relative",
      },
    },
  },
  root_markers = { "tsconfig.json", "package.json", "jsconfig.json", ".git" },
}
