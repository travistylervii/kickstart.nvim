-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  --NOTE: Custom keymaps
  vim.keymap.set('n', '<leader>mf', '<cmd>Ex<cr>'),
  --Moving cursor in insert more
  -- vim.keymap.set('i', '<C-h>', '<LEFT>', { desc = 'LEFT' }),
  -- vim.keymap.set('i', '<C-l>', '<RIGHT>', { desc = 'RIGHT' }),
  -- vim.keymap.set('i', '<C-k>', '<UP>', { desc = 'UP' }),
  -- vim.keymap.set('i', '<C-j>', '<DOWN>', { desc = 'DOWN' }),
}
