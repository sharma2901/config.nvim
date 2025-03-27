return {
  "ahmedkhalf/project.nvim",
  init = function()
    require("project_nvim").setup {
      detection_methods = { "lsp", "pattern" },      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
