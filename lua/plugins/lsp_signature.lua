require("lsp_signature").setup({
  hint_enable = true,
  handler_opts = {
    border = "rounded"
  }
})

local on_attach = function(client, bufnr)
  signature.on_attach({}, bufnr)
end
