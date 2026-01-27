return {
  "leonardcser/cursortab.nvim",
  enabled = false,
  build = "cd server && go build",
  config = function()
    require("cursortab").setup({
      enabled = true,
      log_level = "info", -- "debug", "info", "warn", "error"

      ui = {
        colors = {
          deletion = "#4f2f2f", -- Background color for deletions
          addition = "#394f2f", -- Background color for additions
          modification = "#282e38", -- Background color for modifications
          completion = "#80899c", -- Foreground color for completions
        },
        jump = {
          symbol = "", -- Symbol shown for jump points
          text = " TAB ", -- Text displayed after jump symbol
          show_distance = true, -- Show line distance for off-screen jumps
          bg_color = "#373b45", -- Jump text background color
          fg_color = "#bac1d1", -- Jump text foreground color
        },
      },

      behavior = {
        idle_completion_delay = 50, -- Delay in ms after idle to trigger completion (-1 to disable)
        text_change_debounce = 50, -- Debounce in ms after text change to trigger completion
        cursor_prediction = {
          enabled = true, -- Show jump indicators after completions
          auto_advance = true, -- When no changes, show cursor jump to last line
          dist_threshold = 2, -- Min lines apart to show cursor jump (0 to disable)
        },
      },

      provider = {
        type = "sweep", -- Provider: "autocomplete", "sweep", or "zeta"
        url = "http://localhost:8000", -- URL of the provider server
        model = "sweep-next-edit-1.5b", -- Model name
        temperature = 0.0, -- Sampling temperature
        -- max_tokens = 512, -- Max tokens to generate
        top_k = 50, -- Top-k sampling
        completion_timeout = 5000, -- Timeout in ms for completion requests
        max_diff_history_tokens = 512, -- Max tokens for diff history (0 = no limit)
      },

      debug = {
        immediate_shutdown = false, -- Shutdown daemon immediately when no clients
      },
    })
  end,
}
