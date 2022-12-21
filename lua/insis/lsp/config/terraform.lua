local common = require("insis.lsp.common-config")
local opts = {
  capabilities = common.capabilities,
  flags = common.flags,
  filetypes = { "tf", "tfvar", "terraform" },
  on_attach = function(client, bufnr)
    common.disableFormat(client)
    common.keyAttach(bufnr)
  end,
}
return {
  on_setup = function(server)
    server.setup(opts)
  end,
}
