if require('donnachaheff.first_load')() then
    return
end

-- leader key
vim.g.mapleader = ' '

-- setup globals
require('donnachaheff.globals')

-- load packer.nvim files
require('donnachaheff.plugins')

-- force load austronauta first
vim.cmd [[runtime plugin/astronauta.vim]]

-- load neovim options (e.g. sets)
require('donnachaheff.options')

-- load lsp configs
require('donnachaheff.lsp')
