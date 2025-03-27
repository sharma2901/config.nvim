return {
  'arnamak/stay-centered.nvim',
  enabled = false,
  opts = {},
  config = function()
    local set = vim.keymap.set
    set({'n', 'v' }, '<leader>ct', require('stay-centered').toggle, { desc = 'Toggle stay-centered.nvim' })
  end

}
