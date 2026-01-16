return {
  "folke/snacks.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    dashboard = {
      enabled = true,
      preset = {
        header = [[
██╗   ██╗██╗██╗  ██╗██╗██████╗ ██╗   ██╗
██║   ██║██║██║ ██╔╝██║██╔══██╗██║   ██║
██║   ██║██║█████╔╝ ██║██████╔╝██║   ██║
╚██╗ ██╔╝██║██╔═██╗ ██║██╔══██╗██║   ██║
 ╚████╔╝ ██║██║  ██╗██║██║  ██║╚██████╔╝
  ╚═══╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝ ╚═════╝ 
]],
      },
    },
    explorer = { enabled = false },
    lazygit = { enabled = true },
    gh = { enabled = true },
    gitbrowse = { enabled = true },
    layout = { enabled = false },
    terminal = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    image = { enabled = true },
    picker = { sources = {
      explorer = {},
      gh_issue = {},
      gh_pr = {},
    } },
    notifier = { enabled = true },
    debug = { enabled = true },
    quickfile = { enabled = true },
    bigfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true, folds = {
      open = true,
      git_hl = true,
    } },
    words = { enabled = true },
    zen = { enabled = true },
  },
  keys = {
    {
      "<leader>gi",
      function()
        Snacks.picker.gh_issue()
      end,
      desc = "GitHub Issues (open)",
    },
    {
      "<leader>gI",
      function()
        Snacks.picker.gh_issue({ state = "all" })
      end,
      desc = "GitHub Issues (all)",
    },
    {
      "<leader>gp",
      function()
        Snacks.picker.gh_pr()
      end,
      desc = "GitHub Pull Requests (open)",
    },
    {
      "<leader>gP",
      function()
        Snacks.picker.gh_pr({ state = "all" })
      end,
      desc = "GitHub Pull Requests (all)",
    },
  },
}
