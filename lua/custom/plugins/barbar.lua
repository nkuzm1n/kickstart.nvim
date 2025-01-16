return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    require('barbar').setup {
      sidebar_filetypes = {
        NvimTree = true,
      },
      icons = {
        separator_at_end = false,
      },
      no_name_title = 'No name',
    }

    vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', { silent = true, desc = 'Next buffer' })
    vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', { silent = true, desc = 'Prev buffer' })
    vim.keymap.set('n', '<leader>x', '<Cmd>BufferClose<CR>', { silent = true, desc = 'Close buffer' })
  end,
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
