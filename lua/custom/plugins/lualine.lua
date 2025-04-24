return {
  'nvim-lualine/lualine.nvim',
  opts = function(_, opts)
    local trouble = require 'trouble'
    local symbols = trouble.statusline {
      mode = 'lsp_document_symbols',
      groups = {},
      title = false,
      filter = { range = true },
      format = '{kind_icon}{symbol.name:Normal}',
      hl_group = 'lualine_c_normal',
    }

    -- Ensure sections table exists
    opts.sections = opts.sections or {}
    opts.sections.lualine_c = opts.sections.lualine_c or {}

    table.insert(opts.sections.lualine_c, {
      symbols.get,
      cond = symbols.has,
    })
  end,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
