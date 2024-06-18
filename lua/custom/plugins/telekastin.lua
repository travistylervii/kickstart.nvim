return {
  {
    'renerocksai/telekasten.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require('telekasten').setup {
        home = vim.fn.expand '~/Library/Mobile Documents/iCloud~md~obsidian/Documents/SecondBrain', -- Put the name of your notes directory here
      }
    end,
  },
}
