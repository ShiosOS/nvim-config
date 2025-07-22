-- lua/plugins/copilot.lua
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
      -- This enables the ghost text
      auto_trigger = true,
      keymap = {
        accept = '<C-y>', -- Alt+l
        dismiss = '<C-n>', -- Alt+h
      },
    },
    panel = {
      enabled = true,
    },
  },
}
