return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.registries = opts.registries or { "github:mason-org/mason-registry" }

      local roslyn_registry = "github:Crashdummyy/mason-registry"
      if not vim.tbl_contains(opts.registries, roslyn_registry) then
        table.insert(opts.registries, roslyn_registry)
      end

      opts.ensure_installed = opts.ensure_installed or {}
      if not vim.tbl_contains(opts.ensure_installed, "roslyn") then
        table.insert(opts.ensure_installed, "roslyn")
      end
    end,
  },

  { "Hoffs/omnisharp-extended-lsp.nvim", enabled = false },

  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.omnisharp = vim.tbl_deep_extend("force", opts.servers.omnisharp or {}, { enabled = false })

      opts.setup = opts.setup or {}
      opts.setup.omnisharp = function()
        return true
      end
    end,
  },

  {
    "seblyng/roslyn.nvim",
    ft = { "cs", "razor", "cshtml" },
    opts = {
      broad_search = true,
    },
  },
}
