-- Lua
require("dial").setup({
  mappings = {
    -- Configure custom toggles
    ["boolean"] = {
      -- Toggle between true/false
      group = "boolean",
      inputs = { "true", "false" },
      template = "$1",
    },
    ["logical"] = {
      -- Toggle between &&/||
      group = "logical",
      inputs = { "&&", "||" },
      template = "$1",
    },
  },
})

vim.api.nvim_set_keymap("n", "<C-a>", '<Cmd>lua require"dial".toggle()<CR>', { noremap = true, silent = true })
