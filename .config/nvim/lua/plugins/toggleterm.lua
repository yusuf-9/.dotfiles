return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 15,
      open_mapping = [[<C-t>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      direction = 'horizontal', -- bottom split
      close_on_exit = true,
      shell = vim.o.shell,
    }

    -- ESC to exit terminal mode
    vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

    -- Helper to open new split terminal
    vim.keymap.set('n', '<leader>nts', function()
      local Terminal = require('toggleterm.terminal').Terminal
      local new_term = Terminal:new { direction = 'horizontal' }
      new_term:toggle()
    end, { desc = 'New Terminal Split' })

    -- Helper to open new tab terminal
    vim.keymap.set('n', '<leader>ntt', function()
      local Terminal = require('toggleterm.terminal').Terminal
      local new_term = Terminal:new { direction = 'tab' }
      new_term:toggle()
    end, { desc = 'New Terminal Tab' })

    -- Close current terminal
    vim.keymap.set({ 'n', 't' }, '<leader>tq', function()
      vim.cmd [[bd!]]
    end, { desc = 'Close Terminal Buffer' })

    -- Optional: fix for Ctrl+t breaking normal mode when inside terminal
    vim.cmd [[
      tnoremap <C-t> <C-\><C-n>:ToggleTerm<CR>
    ]]
  end,
}
