return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opt = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      {
        'rcarriga/nvim-notify',
        config = function()
          require('notify').setup {
            stages = 'fade',
            timeout = 5000,
            background_colour = '#1f2335',
            icons = {
              ERROR = '',
              WARN = '',
              INFO = '',
              DEBUG = '',
              TRACE = '✎',
            },
          }
        end,
      },
    },
    require('noice').setup {
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },

      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
    },
  },
}
