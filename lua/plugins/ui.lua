return {
  -- Theme
  {
    'dracula_pro',
    dir = vim.fn.stdpath 'data' .. '/site/pack/themes/start/dracula_pro',
    priority = 1000,
    lazy = false,
    init = function()
      vim.cmd.colorscheme 'dracula_pro_buffy'
      vim.cmd.hi 'Comment gui=none'
    end,
  },

  -- Which-key
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = {
      delay = 0,
      icons = {
        mappings = vim.g.have_nerd_font,
      },
      spec = {
        { '<leader>c', group = '[C]ode', mode = { 'n', 'x' } },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>r', group = '[R]ename' },
        { '<leader>s', group = '[S]earch' },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      },
    },
  },

  -- Status line and other UI
  {
    'echasnovski/mini.nvim',
    config = function()
      require('mini.pairs').setup()
      require('mini.ai').setup { n_lines = 500 }
      require('mini.surround').setup()

      local statusline = require 'mini.statusline'
      statusline.setup { use_icons = vim.g.have_nerd_font }
      statusline.section_location = function()
        return '%2l:%-2v'
      end
      require('mini.tabline').setup()
    end,
  },
}
