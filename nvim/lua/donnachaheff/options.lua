local opt = vim.opt

-- ignore compiled files
opt.wildignore = '__pycache__'
opt.wildignore = opt.wildignore + {'*.o', '*~', '*.pyc', '*pycache'}

--opt.wildmode = {'longest', 'list', 'full'}

-- floating window popup menu for completion in command mode
opt.pumblend = 17

--opt.wildmode = opt.wildmode - 'list'
--opt.wildmode = opt.wildmode + {'longest', 'full'}

opt.wildoptions = 'pum'

opt.showmode = false
opt.showcmd = true
opt.cmdheight = 1
opt.incsearch = true
opt.showmatch = true
opt.relativenumber = true
opt.number = true
opt.ignorecase = true
opt.hidden = true
opt.cursorline = true -- might get rid of this yet.
opt.equalalways = true
opt.splitright = true
opt.splitbelow = true
opt.scrolloff = 10

-- tabs
opt.autoindent = true
opt.cindent = true
opt.wrap = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.breakindent = true
opt.showbreak = string.rep(' ', 3)
opt.linebreak = true

opt.foldmethod = 'marker'
opt.foldlevel = 0
opt.modelines = 1

opt.belloff = 'all'

opt.clipboard = 'unnamedplus'

opt.inccommand = 'split'

opt.mouse = 'n'

opt.joinspaces = false
opt.fillchars = {eob = '~'}

-- TODO: formatoptions and swapfiles and shada
