return {
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
  {
    "serhez/teide.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd("colorscheme teide-darker")
    end,
  },
  {
    "uhs-robert/oasis.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("oasis").setup() -- (see Configuration below for all customization options)
      -- vim.cmd.colorscheme("oasis") -- After setup, apply theme (or any style like "oasis-night")
    end,
  },
  {
    "oskarnurm/koda.nvim",
    enabled = false,
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- vim.cmd("colorscheme koda")
    end,
  },
}
