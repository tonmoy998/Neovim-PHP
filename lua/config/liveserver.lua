require("executor").setup({
  commands = {
    live_server = {
      command = "live-server",
      args = { "%:p:h" }, -- Serve files from the directory of the current file
    },
  },
})
vim.cmd([[ 
nnoremap <leader>r :Executor live_server<CR>
]])
