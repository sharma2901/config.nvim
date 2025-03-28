return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      replace_netrw = true
    }
  },
  keys = {
    { "<leader>e", function() Snacks.explorer() end, desc = "Toggle File [E]xplorer", silent = true, noremap = true },
  }
}
