" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/donnachaheff/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/donnachaheff/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/donnachaheff/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/donnachaheff/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/donnachaheff/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["astronauta.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/astronauta.nvim"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  ["cyclist.vim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/cyclist.vim"
  },
  fzf = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/git-messenger.vim"
  },
  ["gruvbuddy.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/gruvbuddy.nvim"
  },
  ["javascript-libraries-syntax.vim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/javascript-libraries-syntax.vim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim-web-nonicons"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/nvim-web-nonicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/typescript-vim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-javascript-syntax"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/vim-javascript-syntax"
  },
  ["vim-jsx-typescript"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/vim-jsx-typescript"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-surruond"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/vim-surruond"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/donnachaheff/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  }
}

time("Defining packer_plugins", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
