keys = {
  -- Hide messages from screen
    {
      "<leader>nn",
      function() require("notify").dismiss() end,
      desc = "Hide Messages"
    },
    -- Show notification history in a floating window
    {
      "<leader>nh",
      "<cmd>Noice<CR>",
      desc = "Notification History"
    },
    -- Show last message in a floating window
    {
      "<leader>nl",
      "<cmd>Noice last<CR>",
      desc = "Last Message"
    },
    -- Clear notification history
    {
      "<leader>nd",
      "<cmd>Noice dismiss<CR>",
      desc = "Dismiss All"
    },
  }
