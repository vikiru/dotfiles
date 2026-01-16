return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  cmd = "Neotree",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        always_show_by_pattern = {
          ".gitignore",
          ".env.*",
        },
      },
    },
  },
}
