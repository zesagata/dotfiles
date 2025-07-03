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

      local dap_go = require("dap-go")

      -- Create a function to reload DAP configurations
      local function reload_dap_configurations()
        -- Clear existing configurations
        require("dap").configurations.go = {}

        -- Reload the entire dap-go setup with potentially updated environment
        dap_go.setup({
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
              name = "[Production][Nvim] default",
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
            {
              type = "go",
              name = "[Production][NVIM][JKT] Default",
              mode = "debug",
              request = "launch",
              program = workspace_dir .. "/main.go",
              env = load_env_file(workspace_dir .. "/production.default.jakarta.env"),
            },
            {
              type = "go",
              name = "[General] ENV",
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
