return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
    -- 'ibhagwan/fzf-lua', -- optional
    -- 'echasnovski/mini.pick', -- optional
  },
  config = function()
    vim.keymap.set('n', '<leader>gf', ':Neogit kind=floating<CR>', { desc = 'Open Neo[G]it [F]loating window', silent = true })
  end,
}
