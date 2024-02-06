local M = {
  "folke/which-key.nvim",
}

function M.config()
  local mappings = {
    w = { "<cmd>confirm w<CR>", "Save" },
    q = { "<cmd>confirm q<CR>", "Quit" },
    v = { "<cmd>vsplit<CR>", "Split" },
    g = { "<cmd>LazyGit<CR>", "Lazygit" },
    L = { "<cmd>Lazy<CR>", "Lazygit" },
    S = { "<cmd>Spectre<CR>", "Search and Replace" },
    s = { "<cmd>ASToggle<CR>", "Toggle Auto Save" },
    [";"] = { "<cmd>Alpha<CR>", "DashBoard" },
    f = { name = "Find" },
    l = { name = "LSP" },
  }

  local which_key = require "which-key"
  which_key.setup {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = true,
        motions = true,
        text_objects = true,
        windows = false,
        nav = false,
        z = true,
        g = true,
      },
    },
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
    },
    layout = {
      align = "center",
    },
    window = {
      border = "rounded",
      position = "bottom",
      padding = { 2, 2, 2, 2 },
    },
    ignore_missing = true,
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }

  local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
  }

  which_key.register(mappings, opts)
end

return M
