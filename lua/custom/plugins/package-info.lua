return {
  -- Display latest package version in package.json
  'vuki656/package-info.nvim',
  event = 'BufRead package.json',
  dependencies = { 'MunifTanjim/nui.nvim' },
  config = function()
    require('package-info').setup()
  end,
}
