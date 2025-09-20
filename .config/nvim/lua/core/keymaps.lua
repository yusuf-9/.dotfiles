-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- save file without auto-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Vertical scroll 10 lines at once instead of the whole page
vim.keymap.set('n', '<C-M-j>', '10jzz', opts)
vim.keymap.set('n', '<C-M-k>', '10kzz', opts)
vim.keymap.set('v', '<C-M-j>', '10jzz', opts)
vim.keymap.set('v', '<C-M-k>', '10kzz', opts)

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize +2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize -2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<C-n>', ':bnext<CR>', opts)
vim.keymap.set('n', '<C-p>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<C-q>', ':bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<C-q>', function()
  local current_buf = vim.api.nvim_get_current_buf()
  vim.cmd 'bprev' -- move to next buffer
  vim.cmd('bdelete ' .. current_buf) -- then delete the previous one
end, opts)

-- Window management
vim.keymap.set('n', '<m-l>', '<c-w>v', opts) -- split window vertically
vim.keymap.set('n', '<m-h>', '<c-w>v', opts) -- split window vertically
-- vim.keymap.set('n', '<M-k>', '<C-w>s', opts) -- split window horizontally
-- vim.keymap.set('n', '<M-j>', '<C-w>s', opts) -- split window horizontally
vim.keymap.set('n', '<M-=>', '<C-w>=', opts) -- make split windows equal width & height
vim.keymap.set('n', '<M-q>', ':close<CR>', opts) -- close current split window

-- -- Toggle line wrapping
vim.keymap.set('n', '<M-z>', '<cmd>set wrap!<CR>', opts)
--
-- -- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Scroll file up/down with Ctrl+Up/Down in normal and insert mode
-- Normal mode
vim.keymap.set('n', '<C-Up>', '<C-y>', opts)
vim.keymap.set('n', '<C-Down>', '<C-e>', opts)
vim.keymap.set('n', '<C-k>', '<C-y>', opts)
vim.keymap.set('n', '<C-j>', '<C-e>', opts)

-- Jump words back/forward with ctrl+h/l
vim.keymap.set('n', '<C-h>', 'b', opts)
vim.keymap.set('n', '<C-l>', 'e', opts)
vim.keymap.set('v', '<C-h>', 'b', opts)
vim.keymap.set('v', '<C-l>', 'e', opts)

-- Move around with ctrl + h/j/k/l in insert mode
vim.keymap.set('i', '<C-j>', '<Down>', opts)
vim.keymap.set('i', '<C-k>', '<Up>', opts)
vim.keymap.set('i', '<C-h>', '<Left>', opts)
vim.keymap.set('i', '<C-l>', '<Right>', opts)

-- jump words with ctrl + shift + h/j in insert mode
vim.keymap.set('i', '<C-S-h>', '<Esc>bi', opts)
vim.keymap.set('i', '<C-S-l>', '<Esc>ea', opts)

-- Jump to end/start of line using ctrl+alt+h/l
vim.keymap.set('n', '<C-M-h>', '^', opts)
vim.keymap.set('n', '<C-M-l>', '$', opts)
vim.keymap.set('v', '<C-M-h>', '^', opts)
vim.keymap.set('v', '<C-M-l>', '$', opts)

-- Insert mode (temporarily leave insert mode to scroll)
vim.keymap.set('i', '<C-Up>', '<C-o><C-y>', opts)
vim.keymap.set('i', '<C-Down>', '<C-o><C-e>', opts)

-- map alt+j/k to move lines up/down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', opts) -- move line up(n)
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', opts) -- move line down(n)
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", opts) -- move selection down (visual)
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", opts) -- move selection up (visual)

-- G should take to the bottom and center the text
vim.keymap.set('n', 'G', 'Gzz', opts)
--
-- -- enter visual mode and select text using shift+h/j/k/l
-- vim.keymap.set('n', '<S-h>', 'vh', opts)
-- vim.keymap.set('n', '<S-l>', 'vl', opts)
-- vim.keymap.set('n', '<S-j>', 'vj', opts)
-- vim.keymap.set('n', '<S-k>', 'vk', opts)
-- vim.keymap.set('n', '<C-S-h>', 'vb', opts)
-- vim.keymap.set('n', '<C-S-l>', 've', opts)
-- vim.keymap.set('n', '<C-S-j>', 'vj', opts)
-- vim.keymap.set('n', '<C-S-k>', 'vk', opts)
-- vim.keymap.set('v', '<S-h>', 'h', opts)
-- vim.keymap.set('v', '<S-l>', 'l', opts)
-- vim.keymap.set('v', '<S-j>', 'j', opts)
-- vim.keymap.set('v', '<S-k>', 'k', opts)
-- vim.keymap.set('v', '<C-S-h>', 'b', opts)
-- vim.keymap.set('v', '<C-S-l>', 'e', opts)
-- vim.keymap.set('v', '<C-S-j>', 'j', opts)
-- vim.keymap.set('v', '<C-S-k>', 'k', opts)
--
-- Delete one word at a time with Ctrl+Backspace in Insert Mode
-- vim.keymap.set('i', '<C-H>', '<C-w>', opts) -- <C-H> is usually Ctrl+Backspace

-- Clear the search register using esc (only if it is non-empty)
vim.keymap.set('n', '<Esc>', function()
  local search = vim.fn.getreg '/'
  if search ~= '' then
    vim.cmd 'nohlsearch'
    vim.fn.setreg('/', '')
    vim.notify('Search cleared', vim.log.levels.INFO, { title = 'Neovim' })
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>', true, false, true), 'n', true)
  end
end, { desc = 'Smart Esc: Clear search if active' })

-- Toggle diagnostics in the current buffer
local diagnostics_enabled = true

vim.keymap.set('n', '<leader>td', function()
  diagnostics_enabled = not diagnostics_enabled
  if diagnostics_enabled then
    vim.diagnostic.enable(0)
    vim.notify('Diagnostics enabled', vim.log.levels.INFO)
  else
    vim.diagnostic.disable(0)
    vim.notify('Diagnostics disabled', vim.log.levels.WARN)
  end
end, { desc = 'Toggle diagnostics' })

-- prevent copying of the word when using "c"
vim.keymap.set({ 'n', 'x' }, 'c', '"_c', opts)

vim.keymap.set('i', '<C-BS>', '<C-w>', opts)
