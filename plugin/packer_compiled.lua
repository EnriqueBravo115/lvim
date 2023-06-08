-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/nullboy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/nullboy/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/nullboy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/nullboy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/nullboy/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbecue.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\nkinds\1\0\3\nClass\b\vMethod\b\16Constructor\t󱥊\fsymbols\1\0\1\14separator\b▸\22exclude_filetypes\1\2\0\0\tnorg\1\0\1\17show_dirname\1\nsetup\rbarbecue\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/opt/barbecue.nvim",
    url = "https://github.com/utilyre/barbecue.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\r\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\17:HopWord<cr>\6S\1\0\1\vsilent\2\18:HopChar2<cr>\6s\6n\20nvim_set_keymap\bapi\bvim\nsetup\bhop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/opt/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neorg = {
    config = { "\27LJ\2\n�\2\0\1\18\0\f\00055\1\0\0004\2\0\0,\3\4\0006\5\1\0\18\a\0\0B\5\2\4X\b+�\15\0\3\0X\n\3�:\n\1\t\1\3\n\0X\n\b�:\3\1\t6\n\2\0009\n\3\n\18\f\2\0'\r\4\0\18\14\3\0&\r\14\rB\n\3\1\15\0\4\0X\n\3�:\n\2\t\1\4\n\0X\n\b�:\4\2\t6\n\2\0009\n\3\n\18\f\2\0'\r\5\0008\14\4\1&\r\14\rB\n\3\0016\n\6\0006\f\a\0009\f\b\f\18\14\t\0B\f\2\0A\n\0\0016\n\2\0009\n\3\n\18\f\2\0:\r\4\t6\14\t\0009\14\n\14'\16\v\0:\17\5\tB\14\3\2&\r\14\rB\n\3\1E\b\3\3R\b�\127L\2\2\0\t[%s]\vformat\vstring\finspect\bvim\nprint\b** \a* \vinsert\ntable\vipairs\1\r\0\0\fJanuary\rFebruary\nMarch\nApril\bMay\tJune\tJuly\vAugust\14September\fOctober\rNovember\rDecember�\3\1\0\t\0\28\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\26\0005\3\3\0004\4\0\0=\4\4\0035\4\r\0005\5\f\0005\6\b\0005\a\6\0005\b\5\0=\b\a\a=\a\t\0065\a\n\0=\a\v\6=\6\a\5=\5\14\4=\4\15\0035\4\19\0005\5\17\0005\6\16\0=\6\18\5=\5\14\4=\4\20\0035\4\24\0005\5\22\0003\6\21\0=\6\23\5=\5\14\4=\4\25\3=\3\27\2B\0\2\1K\0\1\0\tload\1\0\0\17core.journal\1\0\0\15toc_format\1\0\0\0\16core.dirman\1\0\0\15workspaces\1\0\1\22default_workspace\nnotes\1\0\1\nnotes\24~/Documentos/neorg/\19core.concealer\vconfig\1\0\0\1\0\0\15code_block\1\0\1\17content_only\2\fheading\1\0\0\nicons\1\0\0\1\6\0\0\b✿\b☉\b✻\b✡\b✺\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-go"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-dap-go",
    url = "https://github.com/leoluz/nvim-dap-go"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navic"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/mrjones2014/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
  },
  ["vim-dotenv"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/vim-dotenv",
    url = "https://github.com/tpope/vim-dotenv"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  vimwiki = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/nullboy/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n�\2\0\1\18\0\f\00055\1\0\0004\2\0\0,\3\4\0006\5\1\0\18\a\0\0B\5\2\4X\b+�\15\0\3\0X\n\3�:\n\1\t\1\3\n\0X\n\b�:\3\1\t6\n\2\0009\n\3\n\18\f\2\0'\r\4\0\18\14\3\0&\r\14\rB\n\3\1\15\0\4\0X\n\3�:\n\2\t\1\4\n\0X\n\b�:\4\2\t6\n\2\0009\n\3\n\18\f\2\0'\r\5\0008\14\4\1&\r\14\rB\n\3\0016\n\6\0006\f\a\0009\f\b\f\18\14\t\0B\f\2\0A\n\0\0016\n\2\0009\n\3\n\18\f\2\0:\r\4\t6\14\t\0009\14\n\14'\16\v\0:\17\5\tB\14\3\2&\r\14\rB\n\3\1E\b\3\3R\b�\127L\2\2\0\t[%s]\vformat\vstring\finspect\bvim\nprint\b** \a* \vinsert\ntable\vipairs\1\r\0\0\fJanuary\rFebruary\nMarch\nApril\bMay\tJune\tJuly\vAugust\14September\fOctober\rNovember\rDecember�\3\1\0\t\0\28\0#6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\26\0005\3\3\0004\4\0\0=\4\4\0035\4\r\0005\5\f\0005\6\b\0005\a\6\0005\b\5\0=\b\a\a=\a\t\0065\a\n\0=\a\v\6=\6\a\5=\5\14\4=\4\15\0035\4\19\0005\5\17\0005\6\16\0=\6\18\5=\5\14\4=\4\20\0035\4\24\0005\5\22\0003\6\21\0=\6\23\5=\5\14\4=\4\25\3=\3\27\2B\0\2\1K\0\1\0\tload\1\0\0\17core.journal\1\0\0\15toc_format\1\0\0\0\16core.dirman\1\0\0\15workspaces\1\0\1\22default_workspace\nnotes\1\0\1\nnotes\24~/Documentos/neorg/\19core.concealer\vconfig\1\0\0\1\0\0\15code_block\1\0\1\17content_only\2\fheading\1\0\0\nicons\1\0\0\1\6\0\0\b✿\b☉\b✻\b✡\b✺\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd barbecue.nvim ]]

-- Config for: barbecue.nvim
try_loadstring("\27LJ\2\n�\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\nkinds\1\0\3\nClass\b\vMethod\b\16Constructor\t󱥊\fsymbols\1\0\1\14separator\b▸\22exclude_filetypes\1\2\0\0\tnorg\1\0\1\17show_dirname\1\nsetup\rbarbecue\frequire\0", "config", "barbecue.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'hop.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
