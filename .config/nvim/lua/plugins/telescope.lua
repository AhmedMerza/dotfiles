return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup {
      pickers = {
        find_files = {
          find_command = { "rg", "--files" }, -- Default fast search
        },
        git_ignored_files = {
          find_command = {
            "rg",
            "--files",
            "--no-ignore",
            "--hidden",
            "--glob=!**/node_modules/**",
            "--glob=!**/.git/**",
          },
        },
      },
    }
  end,
}
