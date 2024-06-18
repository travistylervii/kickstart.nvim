-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
-- See the kickstart.nvim README for more information

return {

  -- Custom keymaps
  vim.keymap.set('n', '<leader>ge', '<cmd>Ex<cr>', { desc = 'Goto main files explorer' }),
  vim.keymap.set('n', '<TAB>', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' }),
  -- Move lines
  vim.keymap.set('n', '<M-j>', '<cmd>m .+1<cr>==', { desc = 'Move down' }),
  vim.keymap.set('n', '<M-k>', '<cmd>m .-2<cr>==', { desc = 'Move up' }),
  vim.keymap.set('i', '<M-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move down' }),
  vim.keymap.set('i', '<M-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move up' }),
  vim.keymap.set('v', '<M-j>', ":m '>+1<cr>gv=gv", { desc = 'Move down' }),
  vim.keymap.set('v', '<M-k>', ":m '<-2<cr>gv=gv", { desc = 'Move up' }),

  -- Vertical Movement. Moves up and down the page while centering the cursor.
  vim.keymap.set('v', '<C-d>', '<C-d>zz'),
  vim.keymap.set('v', '<C-u>', '<C-u>zz'),
  vim.keymap.set('n', 'n', 'nzzzv'),
  vim.keymap.set('n', 'N', 'Nzzzv'),

  -- moves the selected block of text one line down and then reselects and re-indents the moved block.
  vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv"),
  vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv"),

  -- Delete the currently selected text without storing it in the normal registers and then paste the content of the unnamed register before the position where the deleted text was.
  vim.keymap.set('x', '<leader>p', [["_dP]]),

  -- Yank text directly to the system clipboard using the <leader>y key combination, whether you are in normal mode or have text selected in visual mode.
  vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]]),
  vim.keymap.set('n', '<leader>Y', [["+Y]]),

  -- Deletes text without copy.
  vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]]),

  -- Neotree
  vim.keymap.set('n', '<leader>fr', ':Neotree reveal<CR>', { desc = 'File reveal (file)' }),

  --Telekastin keymaps
  -- Launch panel if nothing is typed after <leader>z
  vim.keymap.set('n', '<leader>n', '<cmd>Telekasten panel<CR>', { desc = 'Telekasten panel' }),

  -- Most used functions
  vim.keymap.set('n', '<leader>nf', '<cmd>Telekasten find_notes<CR>', { desc = 'Find notes' }),
  vim.keymap.set('n', '<leader>ng', '<cmd>Telekasten search_notes<CR>', { desc = 'Search notes' }),
  vim.keymap.set('n', '<leader>nd', '<cmd>Telekasten goto_today<CR>', { desc = 'Goto today' }),
  vim.keymap.set('n', '<leader>nz', '<cmd>Telekasten follow_link<CR>', { desc = 'Follow link' }),
  vim.keymap.set('n', '<leader>nn', '<cmd>Telekasten new_note<CR>', { desc = 'New note' }),
  vim.keymap.set('n', '<leader>nc', '<cmd>Telekasten show_calendar<CR>', { desc = 'Show calendar' }),
  vim.keymap.set('n', '<leader>nb', '<cmd>Telekasten show_backlinks<CR>', { desc = 'Show backlinks' }),
  vim.keymap.set('n', '<leader>nI', '<cmd>Telekasten insert_img_link<CR>', { desc = 'Insert image link' }),

  -- Call insert link automatically when we start typing a link
  vim.keymap.set('i', '[[', '<cmd>Telekasten insert_link<CR>', { desc = 'Insert link' }),
}
