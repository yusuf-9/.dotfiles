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
vim.keymap.set('n', '<C-d>', '10jzz', opts)
vim.keymap.set('n', '<C-u>', '10kzz', opts)
vim.keymap.set('n', '<C-M-j>', '10jzz', opts)
vim.keymap.set('n', '<C-M-k>', '10kzz', opts)

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

-- Jump to end/start of line using ctrl+clt+h/l
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

-- Delete one word at a time with Ctrl+Backspace in Insert Mode
vim.keymap.set('i', '<C-H>', '<C-w>', opts) -- <C-H> is usually Ctrl+Backspace
