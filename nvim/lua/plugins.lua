-- 启用Pakcer
local status, packer = pcall(require, 'packer')
if (not status) then
  print("Pakcer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

-- 应用插件列表
packer.startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- 实用工具
  use 'nvim-lua/plenary.nvim'
  -- 文件图标
  use 'kyazdani42/nvim-web-devicons'

  -- Neosolarized: 颜色主题管理
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  -- Lualine: 状态栏
  use 'hoob3rt/lualine.nvim'

  -- 类VSCode的图表显示
  use 'onsails/lspkind-nvim' -- vscode-like pictograms

  -- 基于Lua的Neovim代码片段引擎
  use 'L3MON4D3/LuaSnip'

  -- Neovim自动补全引擎
  use 'hrsh7th/nvim-cmp' -- Completion
  -- buffer区域的自动补全
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  -- 内置LSP的自动补全
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's buil-in LSP

  -- Neovim中的treesitter配置和虚拟层
  -- treesitter: 增量解析系统，可以为源文件构建完整的语法树，在源文件被编辑时高效地更新
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- nvim-lspconfig: 配置Lsp
  use 'neovim/nvim-lspconfig'

  -- 自动补全括号
  use 'windwp/nvim-autopairs'
  -- 自动补全html标签
  use 'windwp/nvim-ts-autotag'

  -- 模糊查找器
  use {
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
  }

  -- 更好看的tabs栏
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
  }

  -- 更好看的LSP UI
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      local saga = require("lspsaga")

      saga.init_lsp_saga({
        -- your configuration
      })
    end,
  })

  --
  use 'jose-elias-alvarez/null-ls.nvim'

  --
  use 'MunifTanjim/prettier.nvim'

  -- 显示buffer区被修改的行
  use 'lewis6991/gitsigns.nvim'

  -- git相关
  use 'dinhhuy258/git.nvim'

  -- mason
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- 快速注释
  use 'terrortylor/nvim-comment'

  -- 预览RBG颜色
  use 'norcalli/nvim-colorizer.lua'
end)
