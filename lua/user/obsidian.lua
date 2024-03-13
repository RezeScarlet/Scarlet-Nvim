local M = {
  "epwalsh/obsidian.nvim",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {

    workspaces = {
      {
        name = "Vault",
        path = "~/Desktop/Vault",
      },
    },
  },
}

function M.config() end

return M
