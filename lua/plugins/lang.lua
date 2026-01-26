return {
  -- Mason with custom registry for Roslyn
  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
      ensure_installed = { "vue-language-server" },
    },
  },

  -- C# support via Roslyn LSP
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "c_sharp" })
    end,
  },
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    opts = {},
  },

  -- Vue 2/3 support via Volar
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "vue", "typescript", "javascript" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        volar = {
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
        },
      },
    },
  },
}
