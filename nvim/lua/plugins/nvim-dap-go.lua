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
      local workspace_dir = vim.loop.cwd()

      local dap_go = require("dap-go")

      local function reload_dap_configurations()
        require("dap").configurations.go = {}
        dap_go.setup({
          dap_configurations = {
            {
              type = "go",
              name = "[Staging][Default]",
              mode = "debug",
              request = "launch",
              program = workspace_dir .. "/main.go",
              env = load_env_file(workspace_dir .. "/staging.default.env"),
            },
            {
              type = "go",
              name = "[Staging][Worker]",
              mode = "debug",
              request = "launch",
              program = workspace_dir .. "/main.go",
              env = load_env_file(workspace_dir .. "/staging.worker.env"),
            },
            {
              type = "go",
              name = "[Production][Default]",
              mode = "debug",
              request = "launch",
              program = workspace_dir .. "/main.go",
              env = load_env_file(workspace_dir .. "/production.default.env"),
            },
            {
              type = "go",
              name = "[Production][Worker]",
              mode = "debug",
              request = "launch",
              program = workspace_dir .. "/main.go",
              env = load_env_file(workspace_dir .. "/production.worker.env"),
            },
            {
              type = "go",
              name = "[ENV]",
              mode = "debug",
              request = "launch",
              program = workspace_dir .. "/.",
              env = load_env_file(workspace_dir .. "/.env"),
            },
            {
              type = "go",
              name = "[General] Main No Env",
              mode = "debug",
              request = "launch",
              console = "integratedTerminal",
              program = workspace_dir .. "/.",
            },
          },
          delve = {
            args = {
              "--check-go-version=false",
            },
          },
        })
      end

      vim.api.nvim_create_user_command("ReloadGoDapConfigs", reload_dap_configurations, {})

      reload_dap_configurations()
      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        pattern = { "*.env" },
        callback = reload_dap_configurations,
      })
    end,
  },
}
