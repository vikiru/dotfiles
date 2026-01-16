return {
  "csessh/stopinsert.nvim",
  enabled = false,
  event = { "InsertEnter" }, -- lazy load
  dependencies = {
    -- "hrsh7th/nvim-cmp",
    -- "saghen/blink.cmp",
  },
  opts = {
    -- Configuration options (see Configuration section below for details)
    idle_time_ms = 5000, -- Maximum time (in milliseconds) before you are forced out of Insert mode
    show_popup_msg = false, -- Enable/disable popup message
    clear_popup_ms = 5000, -- Maximum time (in milliseconds) for which the popup message hangs around
    disabled_filetypes = { -- List of filetypes to exclude the effect of this plugin.
      "TelescopePrompt",
      "checkhealth",
      "help",
      "lspinfo",
      "mason",
      "neo%-tree*",
    },
    guard_func = function() -- Optional function that returns a boolean. If true, prevents stopinsert.
      -- return require('cmp').visible_docs()
      return require("blink.cmp").is_documentation_visible()
    end,
  },
}
