return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  lazy = false,
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        offsets = {
          -- {
          --   filetype = 'NvimTree',
          --   separator = false, -- use a "true" to enable the default, or set your own character
          -- },
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            separator = false, -- use a "true" to enable the default, or set your own character
          },
        },
        diagnostics = 'nvim_lsp',
        -- auto_toggle_bufferline = false,
      },
    }

    vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true, desc = 'Next buffer' })
    vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true, desc = 'Prev buffer' })
    -- vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>', { silent = true, desc = 'Close buffer' })
  end,
}
