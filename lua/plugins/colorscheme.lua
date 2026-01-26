return {
  -- Disable LazyVim's default colorscheme
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },

  -- Set Dracula Pro Buffy as colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula_pro_buffy",
    },
  },
}
