return {
  {
    "leoluz/nvim-dap-go",
    config = function()
      local function load_env_file(filename)
        local env = {}
        local stat = vim.loop.fs_stat(filename)
        if stat then
          for line in io.lines(filename) do
            local key, value = line:match("([^=]+)=([^=]+)")
            if key and value then
              env[key] = value
            end
          end
        else
          print("Warning: " .. filename .. " not found. Skipping...")
        end
        return env
      end
      local workspace_dir = vim.loop.cwd() -- Adjust as necessarily
      require("dap-go").setup({
        dap_configurations = {
          {
            type = "go",
            name = "[Default] Staging",
            mode = "debug",
            request = "launch",
            program = workspace_dir .. "/main.go",
            env = load_env_file(workspace_dir .. "/staging.default.env"),
          },
        },
        delve = {
          args = {
            "--check-go-version=false",
          },
        },
      })
    end,
  },
}
