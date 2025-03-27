return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    -- Files
    {
      "<leader>ff",
      function() require('fzf-lua').files() end,
      desc = "[F]ind [F]iles"
    },
    {
      "<leader>fF",
      function() require('fzf-lua').files({resume = true}) end,
      desc = "Resume [F]ind [F]iles"
    },
    {
      "<leader>fs",
      function() require('fzf-lua').grep_visual() end,
      mode = { "x" },
      desc = "[F]id [S]elected"
    },
    {
      "<leader>fc",
      function() require('fzf-lua').files({cwd = vim.fn.stdpath("config")}) end,
      desc = "[F]id [C]onfig"
    },
    {
      "<leader>fr",
      function() require('fzf-lua').oldfiles() end,
      desc = "[F]ind [R]ecent"
    },
    {
      "<leader>q",
      function() require('fzf-lua').quickfix() end,
      desc = "[Q]uickfix"
    },
    {
      "<leader>bl",
      function() require('fzf-lua').buffers() end,
      desc = "[L]ist [B]uffer"
    },
    -- Search
    {
      "<leader>fg",
      function() require('fzf-lua').live_grep() end,
      desc = "[F]ind [G]rep"
    },
    {
      "<leader>fw",
      function() require('fzf-lua').grep_cword() end,
      desc = "[F]ind [W]ord under the cursor"
    },
    {
      "<leader>fW",
      function() require('fzf-lua').grep_cWORD() end,
      desc = "[F]ind [W]ORD under the cursor"
    },
    {
      "<leader>fp",
      function() require('fzf-lua').grep_project() end,
      desc = "[F]ind in [P]roject"
    },
    {
      "<leader>fb",
      function() require('fzf-lua').lgrep_curbuf() end,
      desc = "[f]ind in current [B]uffer"
    },
    -- MISC
    {
      "<leader>fB",
      function() require('fzf-lua').builtin() end,
      desc = "[F]ind [B]uiltin"
    },
    {
      "<leader>fh",
      function() require('fzf-lua').helptags() end,
      desc = "[F]ind [H]elp"
    },
    {
      "<leader>fm",
      function() require('fzf-lua').marks() end,
      desc = "[F]ind [M]arks"
    },
    {
      "<leader>fk",
      function() require('fzf-lua').keymaps() end,
      desc = "[F]ind [K]eymaps"
    }
  }
}
