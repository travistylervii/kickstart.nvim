-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  --NOTE: Custom keymaps
  vim.keymap.set('n', '<leader>ge', '<cmd>Ex<cr>', { desc = 'Goto main files explorer' }),
  vim.keymap.set('n', ';;', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' }),
  -- Move lines
  vim.keymap.set('n', '<C-j>', '<cmd>m .+1<cr>==', { desc = 'Move down' }),
  vim.keymap.set('n', '<C-k>', '<cmd>m .-2<cr>==', { desc = 'Move up' }),
  -- vim.keymap.set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move down' }),
  -- vim.keymap.set('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move up' }),
  -- vim.keymap.set('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move down' }),
  -- vim.keymap.set('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move up' }),
}
