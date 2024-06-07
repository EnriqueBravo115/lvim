return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- GENERAL
  use "akinsho/toggleterm.nvim"
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use "lewis6991/gitsigns.nvim"
  use "norcalli/nvim-colorizer.lua"
  use "lukas-reineke/indent-blankline.nvim"
  use { "stevearc/dressing.nvim" }
  use "HiPhish/rainbow-delimiters.nvim"
  use "joerdav/templ.vim"
  use "rose-pine/neovim"
  use "EdenEast/nightfox.nvim"

  use {
    'cameron-wags/rainbow_csv.nvim',
    config = function()
        require 'rainbow_csv'.setup()
    end,
    -- optional lazy-loading below
    module = {
        'rainbow_csv',
        'rainbow_csv.fns'
    },
    ft = {
        'csv',
        'tsv',
        'csv_semicolon',
        'csv_whitespace',
        'csv_pipe',
        'rfc_csv',
        'rfc_semicolon'
    }
}

  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }

  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  --use "nvim-treesitter/nvim-treesitter-context"
  use "windwp/nvim-ts-autotag"

  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    after = "nvim-web-devicons",
  })

  -- TOOLS
  use "tpope/vim-fugitive"
  use "vimwiki/vimwiki"
  use "theprimeagen/harpoon"
  use "mbbill/undotree"

  use { "kristijanhusak/vim-dadbod-ui",
    requires = { "tpope/vim-dadbod",
      "tpope/vim-dotenv",
      "kristijanhusak/vim-dadbod-completion" } }

  use "nvim-lua/plenary.nvim"
  use { "nvim-telescope/telescope.nvim", tag = "0.1.4", requires = { { "nvim-lua/plenary.nvim" } } }
  use "nvim-telescope/telescope-dap.nvim"

  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
  use "folke/neodev.nvim"
  use "jose-elias-alvarez/null-ls.nvim"

  -- LANG
  use "mfussenegger/nvim-jdtls"
  use "leoluz/nvim-dap-go"

  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
      { "neovim/nvim-lspconfig" },
      {
        "williamboman/mason.nvim",
        run = function()
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      { "williamboman/mason-lspconfig.nvim" },

      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "L3MON4D3/LuaSnip" },
      { "onsails/lspkind.nvim" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
end)
