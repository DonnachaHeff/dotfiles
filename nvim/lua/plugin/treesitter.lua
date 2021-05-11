local ts_debugging =  false

if ts_debugging then
  RELOAD('nvim-treesitter')
end

-- :h nvim-treesitter-query-extensions
local custom_captures = {
  ['function.call'] = 'LuaFunctionCall',
  ['function.bracket'] = 'Type',
  ['namespace.type'] = 'TSNamespaceType',
}

local enabled = true

local read_query = function(filename)
  return table.concat(vim.fn.readfile(vim.fn.expand(filename)), "\n")
end

require('nvim-treesitter.configs').setup {
  ensure_installed = { 'go', 'rust', 'toml', 'query', 'typescript', },

  highlight = {
    enable = enabled, -- false will disable the whole extension
    use_languagetree = false,
    disable = {"json"},
    custom_captures = custom_captures,
  },

  incremental_selection = {
    enable = enabled,
    keymaps = { -- mappings for incremental selection (visual mappings)
      init_selection = '<M-w>',    -- maps in normal mode to init the node/scope selection
      node_incremental = '<M-w>',  -- increment to the upper named parent
      scope_incremental = '<M-e>', -- increment to the upper scope (as defined in locals.scm)
      node_decremental = '<M-C-w>',  -- decrement to the previous node
    },
  },

  refactor = {
    highlight_definitions = {enable = enabled},
    highlight_current_scope = {enable = false},

    smart_rename = {
      enable = false,
      keymaps = {
        -- mapping to rename reference under cursor
        smart_rename = 'grr',
      },
    },

    -- navigation = {
    --   enable = false,
    --   keymaps = {
    --     goto_definition = 'gnd', -- mapping to go to definition of symbol under cursor
    --     list_definitions = 'gnD', -- mapping to list all definitions in current file
    --   },
    -- },
  -- },

  -- context_commentstring = {
  --   enable = true,
  --   config = {
  --     -- TODO: Figure this out or wait for Conni to do it for me
  --     -- just like the rest of my open source work.
  --     c   = '// %s',
  --     lua = '-- %s',
  --   },
  -- },

  -- textobjects = {
  --   select = {
  --     enable = true,
  --     -- disable = { 'lua' },
  --     keymaps = {
  --       ['af'] = '@function.outer',
  --       ['if'] = '@function.inner',

  --       ['ac'] = '@conditional.outer',
  --       ['ic'] = '@conditional.inner',

  --       ['aa'] = '@parameter.outer',
  --       ['ia'] = '@parameter.inner',
  --     },
  --   },

  --   swap = {
  --     enable = true,
  --     swap_next = {
  --       ["<M-s><M-p>"] = "@parameter.inner",
  --       ["<M-s>f"] = "@function.outer",
  --     },
  --     swap_previous = {
  --       ["<M-s><M-P>"] = "@parameter.inner",
  --       ["<M-s>F"] = "@function.outer",
  --     },
  --   },
  -- },
}
}
vim.cmd [[highlight IncludedC guibg=#373b41]]
