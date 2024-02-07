---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- For a more complex keymap
    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle transparency",
    },
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "Formatting",
    },
    -- Tmux vim navigator
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "Window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "Window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "Window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "Window up" },
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["<"] = { "<gv", "unindent" },
  },
}

-- more keybinds!

return M
