return {
  "nvim-lualine/lualine.nvim",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    local colors = {
      foreground = "#7DF9AA",
      background = "#030B16",
      accent_blue = "#61AFEF",
      accent_yellow = "#E5C07B",
      accent_red = "#E06C75",
      inactive_foreground = "#6A737D",
    }

    local custom_lualine_theme = {
      normal = {
        a = { bg = colors.foreground, fg = colors.background, gui = "bold" },
        b = { bg = colors.background, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.foreground },
      },
      insert = {
        a = { bg = colors.accent_blue, fg = colors.background, gui = "bold" },
        b = { bg = colors.background, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.foreground },
      },
      visual = {
        a = { bg = colors.accent_yellow, fg = colors.background, gui = "bold" },
        b = { bg = colors.background, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.foreground },
      },
      replace = {
        a = { bg = colors.accent_red, fg = colors.background, gui = "bold" },
        b = { bg = colors.background, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.foreground },
      },
      command = {
        a = { bg = colors.foreground, fg = colors.background, gui = "bold" },
        b = { bg = colors.background, fg = colors.foreground },
        c = { bg = colors.background, fg = colors.foreground },
      },
      inactive = {
        a = { bg = colors.background, fg = colors.inactive_foreground, gui = "bold" },
        b = { bg = colors.background, fg = colors.inactive_foreground },
        c = { bg = colors.background, fg = colors.inactive_foreground },
      },
    }

    local mode = {
      "mode",
      fmt = function(str)
        return " " .. str
      end,
    }

    local diff = {
      "diff",
      colored = true,
      symbols = { added = " ", modified = " ", removed = " " },
    }

    local filename = {
      "filename",
      file_status = true,
      path = 0,
    }

    local branch = { "branch", icon = { "", color = { fg = "#A6D4DE" } }, "|" }

    lualine.setup({
      icons_enabled = true,
      options = {
        --[[  theme = custom_lualine_theme, ]]
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "|", right = "" },
        disabled_filetypes = {
          statusline = {
            "dashboard",
            "alpha",
            "ministarter",
            "Neotree",
            "lazy",
            "snacks_dashboard",
            "snacks_picker_input",
            "snacks_picker_list",
            "gitignore",
            "gitattributes",
            "gitcommit",
            "gitrebase",
            "git",
            "markdown",
            "jsonc",
            "json",
            "yaml",
          },
        },
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { branch, diff, "diagnostics" },
        lualine_c = { filename },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
