nnoremap <leader>tg :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>tf :lua require('telescope.builtin').find_files()<CR>
