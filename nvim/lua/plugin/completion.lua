vim.opt.completeopt = { "menuone", "noselect", }

-- don't want to display the pattern not found alerts
vim.cmd [[set shortmess+=c]]

local has_compe, compe = pcall(require, 'compe')
if has_compe then
    compe.setup {
        enabled = true;
        autocomplete = true;
        debug = false;
        min_length = 1;
        preselect = 'enabled';
        throttle_time = 200;
        source_timeout = 200;
        incomplete_delay = 400;
        allow_prefix_unmatch = false;

        source = {
            path = true;
            buffer = true;
            calc = true;
            nvim_lsp = true;
            nvim_lua = true;
            vsnip = true;
            spell = true;
            tags = true;
            treesitter = false;
            snippets_nvim = true;
        };
    }


  vim.api.nvim_set_keymap('i', '<c-y>', 'compe#confirm("<c-y>")', { silent = true, noremap = true, expr = true })
  vim.api.nvim_set_keymap('i', '<c-e>', 'compe#close("<c-e>")', { silent = true, noremap = true, expr = true })
  vim.api.nvim_set_keymap('i', '<c-space>', 'compe#complete()', { silent = true, noremap = true, expr = true })

  end
