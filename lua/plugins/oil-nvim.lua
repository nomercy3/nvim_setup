return {
  {
    -- Oil.Nvim
    'stevearc/oil.nvim',
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function ()
      require('oil').setup {
        columns = { 'icon' },
        keymaps = {
          ['<C-h'] = false,
          ['<M-h>'] = 'actions.select_split',
        },
        view_options = {
          show_hidden = true,
        },
      }

      -- Open parent dir in current window
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent dir' })

      -- Open parent dir in floating window
      vim.keymap.set('n', '<space>-', require('oil').toggle_float, { desc = 'Open floating dir' })
    end,
  }
}
