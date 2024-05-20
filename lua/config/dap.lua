require("dapui").setup({})
local dap = require("dap")
dap.adapters.php = {
  type = "executable",
  command = "node",
  args = { "~/.local/scripts/vscode-php-debug/out/phpDebug.js" },
}

dap.configurations.php = {
  {
    type = "php",
    request = "launch",
    name = "Listen for Xdebug",
    port = 9000,
  },
}
vim.keymap.set("n", "<Leader>bt", function()
  require("dap").toggle_breakpoint()
end)
vim.keymap.set("n", "<Leader>bc", function()
  require("dap").toggle_breakpoint()
end)

local dap, dapui = require("dap"), require("dapui")
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
