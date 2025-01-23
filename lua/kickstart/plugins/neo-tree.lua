-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    window = {
      mappings = {
        ['o'] = 'open',
      },
    },
    filesystem = {
      window = {
        position = 'left',
        width = 35,
        mappings = {
          ['<leader>e'] = 'close_window',
          -- fix delay after button pressed
          ['o'] = { 'open', nowait = true },
          ['oc'] = 'noop',
          ['od'] = 'noop',
          ['og'] = 'noop',
          ['om'] = 'noop',
          ['on'] = 'noop',
          ['os'] = 'noop',
          ['ot'] = 'noop',
          -- end fix delay after button pressed
          ['O'] = { 'show_help', nowait = false, config = { title = 'Order by', prefix_key = 'O' } },
          ['Oc'] = { 'order_by_created', nowait = false },
          ['Od'] = { 'order_by_diagnostics', nowait = false },
          ['Og'] = { 'order_by_git_status', nowait = false },
          ['Om'] = { 'order_by_modified', nowait = false },
          ['On'] = { 'order_by_name', nowait = false },
          ['Os'] = { 'order_by_size', nowait = false },
          ['Ot'] = { 'order_by_type', nowait = false },
        },
      },
    },
    buffers = {
      window = {
        mappings = {
          ['bd'] = 'buffer_delete',
          ['<bs>'] = 'navigate_up',
          ['.'] = 'set_root',
          -- fix delay after button pressed
          ['o'] = { 'open', nowait = true },
          ['oc'] = 'noop',
          ['od'] = 'noop',
          ['og'] = 'noop',
          ['om'] = 'noop',
          ['on'] = 'noop',
          ['os'] = 'noop',
          ['ot'] = 'noop',
          -- end fix delay after button pressed
          ['O'] = { 'show_help', nowait = false, config = { title = 'Order by', prefix_key = 'O' } },
          ['Oc'] = { 'order_by_created', nowait = false },
          ['Od'] = { 'order_by_diagnostics', nowait = false },
          ['Om'] = { 'order_by_modified', nowait = false },
          ['On'] = { 'order_by_name', nowait = false },
          ['Os'] = { 'order_by_size', nowait = false },
          ['Ot'] = { 'order_by_type', nowait = false },
        },
      },
    },
    git_status = {
      window = {
        position = 'float',
        mappings = {
          ['A'] = 'git_add_all',
          ['gu'] = 'git_unstage_file',
          ['ga'] = 'git_add_file',
          ['gr'] = 'git_revert_file',
          ['gc'] = 'git_commit',
          ['gp'] = 'git_push',
          ['gg'] = 'git_commit_and_push',
          -- fix delay after button pressed
          ['o'] = { 'open', nowait = true },
          ['oc'] = 'noop',
          ['od'] = 'noop',
          ['og'] = 'noop',
          ['om'] = 'noop',
          ['on'] = 'noop',
          ['os'] = 'noop',
          ['ot'] = 'noop',
          -- end fix delay after button pressed
          ['O'] = { 'show_help', nowait = false, config = { title = 'Order by', prefix_key = 'O' } },
          ['Oc'] = { 'order_by_created', nowait = false },
          ['Od'] = { 'order_by_diagnostics', nowait = false },
          ['Om'] = { 'order_by_modified', nowait = false },
          ['On'] = { 'order_by_name', nowait = false },
          ['Os'] = { 'order_by_size', nowait = false },
          ['Ot'] = { 'order_by_type', nowait = false },
        },
      },
    },
    source_selector = {
      winbar = true, -- toggle to show selector on winbar
      sources = { -- table
        {
          source = 'filesystem', -- string
          display_name = ' 󰉓 Files ', -- string | nil
        },
        {
          source = 'buffers', -- string
          display_name = ' 󰈚 Buffers ', -- string | nil
        },
        {
          source = 'git_status', -- string
          display_name = ' 󰊢 Git ', -- string | nil
        },
      },
    },
  },
}
