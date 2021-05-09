vim.cmd [[packadd packer.nvim]]

return require('packer').startup (
    function(use)
        use 'wbthomason/packer.nvim'

        -- lsp config
        use 'neovim/nvim-lspconfig'
        -- TODO: check out these nvim plugins
        use 'glepnir/lspsaga.nvim'
        use 'onsails/lspkind-nvim'
        use 'nvim-lua/lsp_extensions.nvim'
        use 'tjdevries/nlua.nvim'

        -- text manipulation
        use 'tpope/vim-commentary' -- use gc to comment in V mode
        use 'tpope/vim-surruond' -- use cs"' to change surrounding " to '
        use 'godlygeek/tabular' -- allows me to align text by a specific pattern

        -- completion stuff
        use 'hrsh7th/nvim-compe'
        use 'hrsh7th/vim-vsnip'
        use 'hrsh7th/vim-vsnip-integ'

        -- colorscheme
        use 'tjdevries/colorbuddy.nvim'
        use 'tjdevries/gruvbuddy.nvim'

        -- treesitter
        use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
        use 'nvim-treesitter/playground'

        -- telescope
        use 'nvim-lua/popup.nvim'
        use 'nvim-telescope/telescope.nvim'
        use 'nvim-telescope/telescope-fzy-native.nvim'

        use 'nvim-lua/plenary.nvim'

        -- statusline
        use 'hoob3rt/lualine.nvim'
        use 'kyazdani42/nvim-web-devicons'

        use 'wbthomason/lsp-status.nvim'

        -- git
        use 'rhysd/git-messenger.vim'
        -- use 'pwntester/octo.nvim' -- review pull requests

        -- fuzzy search
        use {'junegunn/fzf', run = './install --all'}
        use {'junegunn/fzf.vim'}

        -- icons
        use 'ryanoasis/vim-devicons'
        use 'yamatsum/nvim-web-nonicons'
        use 'tjdevries/cyclist.vim'
        
        -- typescript
        use 'jelera/vim-javascript-syntax'
        use 'othree/javascript-libraries-syntax.vim'
        use 'leafgarland/typescript-vim'
        use 'peitalin/vim-jsx-typescript'

        -- prettier
        use {'prettier/vim-prettier', run = 'yarn install'}

        use 'tjdevries/astronauta.nvim'
    end)
