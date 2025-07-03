return {
  { "ellisonleao/gruvbox.nvim" },
  { "scottmckendry/cyberdream.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "Shatur/neovim-ayu", name = "ayu" },
  { "bluz71/vim-moonfly-colors", name = "moonfly" },
  {
    "olivercederborg/poimandres.nvim",
    config = function()
      require("poimandres").setup({
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      })
    end,
  },
  {
    "shaunsingh/nord.nvim",
  },
  {
    "kvrohit/substrata.nvim",
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "moonfly",
    },
  },
}
