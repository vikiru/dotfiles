return {
  "serhez/bento.nvim",
  keys = { ";" },
  opts = {
    -- Core settings
    main_keymap = ";",
    max_open_buffers = 12, -- Auto-delete beyond 12
    buffer_deletion_metric = "frecency_access",
    buffer_notify_on_delete = true,

    ui = {
      mode = "floating",
      floating = {
        position = "middle-right",
        minimal_menu = "dashed", -- ── active, ─ inactive
        border = "rounded",
        max_rendered_buffers = 8, -- Pagination after 8
      },
      tabline = {
        left_page_symbol = "❮",
        right_page_symbol = "❯",
        separator_symbol = "│",
      },
    },

    -- Visual feedback
    highlights = {
      current = "Bold",
      previous = "Search",
      label_delete = "DiagnosticError",
      label_open = "DiagnosticHint",
      window_bg = "Normal", -- Match LazyVim aesthetic
    },
  },
}
