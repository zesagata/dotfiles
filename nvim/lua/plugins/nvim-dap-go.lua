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
        end
        return env
      end
      local workspace_dir = vim.loop.cwd() -- Adjust as necessarily
      require("dap-go").setup({
        dap_configurations = {
          {
            type = "go",
            name = "[Staging][NVIM] Default",
            mode = "debug",
            request = "launch",
            program = workspace_dir .. "/main.go",
            env = load_env_file(workspace_dir .. "/staging.default.env"),
          },
          {
            type = "go",
            name = "[Staging][NVIM] Worker",
            mode = "debug",
            request = "launch",
            program = workspace_dir .. "/main.go",
            env = load_env_file(workspace_dir .. "/staging.worker.env"),
          },
          {
            type = "go",
            name = "[Production][NVIM] Default",
            mode = "debug",
            request = "launch",
            program = workspace_dir .. "/main.go",
            env = load_env_file(workspace_dir .. "/production.default.env"),
          },
          {
            type = "go",
            name = "[Production][NVIM] Worker",
            mode = "debug",
            request = "launch",
            program = workspace_dir .. "/main.go",
            env = load_env_file(workspace_dir .. "/production.worker.env"),
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
