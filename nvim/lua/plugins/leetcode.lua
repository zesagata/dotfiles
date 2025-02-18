return {
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      lang = "golang",
      hooks = {
        ["question_enter"] = {
          function()
            vim.opt.winfixbuf = false
          end,
        },
      },
      injector = {
        ["golang"] = {
          before = { "//go:build ignore", "// +build ignore", "package main", "func main() {", "  return", "}" },
        },
      },
    },
  },
}
