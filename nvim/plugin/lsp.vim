set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

nnoremap <leader> gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader> gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader> rf :lua vim.lsp.buf.references()<CR>
nnoremap <leader> rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader> hv :lua vim.lsp.buf.hover()<CR>
