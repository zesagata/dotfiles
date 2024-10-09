return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- add cyberdream
  { "scottmckendry/cyberdream.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "Shatur/neovim-ayu", name = "ayu" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
    },
  },
}
