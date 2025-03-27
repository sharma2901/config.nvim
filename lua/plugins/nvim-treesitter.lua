return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = {
          "c",
          "lua",
          "vim",
          "vimdoc",
          "javascript",
          "typescript",
          "markdown",
          "markdown_inline",
          "css",
          "html",
          "regex",
          "bash",
        },
        sync_install = false,
        auto_install = true,
        indent = {enabled = true},
        highlight = {
          enable = true,
          disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              return true
            end
          end,
        },
      }
  end
}
