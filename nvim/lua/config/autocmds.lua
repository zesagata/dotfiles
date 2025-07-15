-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "toml", "py", "js", "ts", "jsx" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Auto save when leaving insert mode
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
