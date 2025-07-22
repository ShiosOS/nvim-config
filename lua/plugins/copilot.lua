return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  dependencies = {
    {
      'zbirenbaum/copilot-cmp',
      config = function()
        require('copilot_cmp').setup()
      end,
    },
  },
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = '<C-y>',
        dismiss = '<C-n>',
      },
    },
    panel = {
      enabled = true,
    },
  },
}
