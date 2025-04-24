return {
  -- lazy.nvim
  'folke/snacks.nvim',
  opts = {
    indent = {
      animate = {
        enabled = false,
      },
      -- your indent configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    dashboard = {
      -- your dashboard configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      sections = { section = 'keys', gap = 1, padding = 1 },
    },
  },
}
