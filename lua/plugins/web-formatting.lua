vim.g.lazyvim_prettier_needs_config = true
vim.g.lazyvim_eslint_auto_format = true

return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      for _, tool in ipairs({ "eslint-lsp", "prettier", "vtsls", "vue-language-server" }) do
        if not vim.tbl_contains(opts.ensure_installed, tool) then
          table.insert(opts.ensure_installed, tool)
        end
      end
    end,
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters = {
        prettier = {
          prefer_local = "node_modules/.bin",
        },
      },
    },
  },
}
