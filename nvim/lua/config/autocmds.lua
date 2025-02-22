-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "toml", "py" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- vim.api.nvim_create_user_command("qam", function()
--   vim.cmd("mks!") -- Save the session
--   vim.cmd("qa") -- Quit all windows
-- end, {})

-- Auto save when leaving insert mode
--
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = { "*" },
  command = "silent! wall",
  nested = true,
})

-- Auto save when leaving visual mode
vim.api.nvim_create_autocmd({ "ModeChanged" }, {
  pattern = { "*:n" },
  command = "silent! wall",
  nested = true,
})

-- Optional: Add a notification when file is saved
vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function()
    vim.notify("File saved !", vim.log.levels.INFO, {
      title = "AutoSave",
      timeout = 500,
    })
  end,
})
