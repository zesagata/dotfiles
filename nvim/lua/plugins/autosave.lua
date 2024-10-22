return {
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      defaults = {
        ["<ESC>"] = { ":w<CR>", "Save on ESC" },
      },
    },
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {
      options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" },
    },
  },
  {
    dir = "custom_autosave",
    name = "custom_autosave",
    config = function()
      -- Auto save when leaving insert mode
      -- vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
      --  pattern = { "*" },
      -- command = "silent! wall",
      -- nested = true,
      -- })

      -- Auto save when leaving visual mode
      vim.api.nvim_create_autocmd({ "ModeChanged" }, {
        pattern = { "*:n" },
        command = "silent! wall",
        nested = true,
      })

      -- Optional: Add a notification when file is saved
      vim.api.nvim_create_autocmd("BufWritePost", {
        callback = function()
          vim.notify("File saved!", vim.log.levels.INFO, {
            title = "AutoSave",
            timeout = 500,
          })
        end,
      })
    end,
  },
}
