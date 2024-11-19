return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- add cyberdream
  { "scottmckendry/cyberdream.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "Shatur/neovim-ayu", name = "ayu" },
  -- Configure LazyVim to load gruvbox
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "substrata",
    },
  },
}
