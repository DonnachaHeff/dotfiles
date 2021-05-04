local function custom_init = function(client)
    client.config.flags = client.config.flags or {}
    client.config.flags.allow_incremental_sync = true
end

local custom_attach = function(client)
  local filetype = vim.api.nvim_buf_get_option(0, 'filetype')

  nvim_status.on_attach(client)

  nnoremap { "<space>dn", vim.lsp.diagnostic.goto_next, buffer = 0 }
  nnoremap { "<space>dp", vim.lsp.diagnostic.goto_prev, buffer = 0 }
  nnoremap { "<space>sl", vim.lsp.diagnostic.show_line_diagnostics, buffer = 0 }

  nnoremap { "gd", vim.lsp.buf.definition, buffer = 0 }
  nnoremap { "gD", vim.lsp.buf.declaration, buffer = 0 }

  nnoremap { "<space>cr", MyLspRename, buffer = 0 }


  -- vim.bo.omnifunc = 'v:lua.vim.lsp.omnifunc'

  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    nvim_exec [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]]
  end
end

require'lspconfig'.tsserver.setup{ 
    cmd = { "typscript-language-server", "--stdio" },
    filetypes = { "javascript", "typescript" },
    rootdir = root_pattern{ "package.json", "tsconfig.json", "jsconfig.json", ".git" },
    on_init = custom_init,
    on_attach = custom_attach,
}
