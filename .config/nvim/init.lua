require 'core.plugins'
require 'core.options'
require 'core.keymaps'
require 'core.colors'

require 'plugins.cmp'
require 'plugins.nvim-tree'
require 'plugins.comment'

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
