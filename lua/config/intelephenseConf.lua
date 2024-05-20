local nvim_lsp = require("lspconfig")

local nvim_lsp = require("lspconfig")

nvim_lsp.intelephense.setup({
  cmd = { "intelephense", "--stdio" },
  filetypes = { "php" },
  capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
  root_dir = function(fname)
    return nvim_lsp.util.find_git_ancestor(fname)
      or nvim_lsp.util.root_pattern("composer.json", ".git")(fname)
      or nvim_lsp.util.path.dirname(fname)
  end,
})
