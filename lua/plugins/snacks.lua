return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    indent = { enabled = true },
    input = {
      enabled = true,
      icon = " ",
      icon_hl = "SnacksInputIcon",
      icon_pos = "left",
      prompt_pos = "title",
      expand = true,
      win = {
        style = "input",
        relative = "cursor", -- This will make it appear near the cursor
        row = 1,            -- Adjust these values to position the window
        col = 0,
      },
    },
    dashboard = {enabled = true},
    bigfile = { enabled = true },
    -- notify = { enabled = true },
    dim = { enabled = true },
    scope = { enabled = true },
    toggle = { enabled = true}
  }
}
