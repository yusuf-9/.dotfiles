return {
  'sindrets/diffview.nvim',
  config = function()
    vim.keymap.set('n', '<leader>g', ':DiffviewOpen <CR>', { noremap = true, silent = true }) -- Open giff diff view
    vim.keymap.set('n', '<leader>ge', ':DiffviewClose <CR>', { noremap = true, silent = true }) -- Close giff diff view
  end,
}
