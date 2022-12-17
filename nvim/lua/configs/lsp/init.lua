local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- require "brook.lsp.configs"
require("brook.lsp.handlers").setup()
require("brook.lsp.lsp-installer")
-- require "brook.lsp.null-ls"
