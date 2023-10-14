local null_ls = require('null-ls');
local formatting = null_ls.builtins.formatting

local sources = {
  formatting.prettier.with({
    filetypes = { "html", "json", "yaml", "markdown", "lua", 'javascript', 'typescript' },
    extra_filetypes = { "toml" },
  }),
  -- formatting.stylua,
}
null_ls.setup({
  sources = sources,
  --   on_attach = function(client)
  -- 	if client.resolved_capabilities.document_formatting then
  -- 		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()")
  -- 	end
  -- end,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          -- vim.lsp.buf.format({bufnr = bufnr}) --(or)
          vim.lsp.buf.format()
        end,
      })
    end
  end,
})
