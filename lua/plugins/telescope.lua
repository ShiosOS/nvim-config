-- Configure Telescope to always search from the git/project root,
-- computed dynamically each time a picker opens.
return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local telescope = require("telescope")
    local builtin   = require("telescope.builtin")

    -- Returns the git root for the current buffer, or falls back to nvim cwd.
    local function project_root()
      local buf_dir = vim.fn.expand("%:p:h")
      local root = vim.fn.systemlist(
        "git -C " .. vim.fn.shellescape(buf_dir) .. " rev-parse --show-toplevel"
      )[1]
      if vim.v.shell_error ~= 0 or not root or root == "" then
        return vim.loop.cwd()
      end
      return (root:gsub("/", "\\"))
    end

    -- Wrap the pickers that LazyVim / keymaps commonly invoke
    local pickers_to_wrap = {
      "find_files",
      "git_files",
      "live_grep",
      "grep_string",
      "oldfiles",
    }

    for _, name in ipairs(pickers_to_wrap) do
      local orig = builtin[name]
      if orig then
        builtin[name] = function(o)
          o = vim.tbl_deep_extend("force", { cwd = project_root() }, o or {})
          return orig(o)
        end
      end
    end

    return opts
  end,
}
