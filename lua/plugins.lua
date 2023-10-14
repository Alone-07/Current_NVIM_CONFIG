vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' --usein manager
  use { "ellisonleao/gruvbox.nvim" }
  use 'tomasiser/vim-code-dark'
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
  })
  use {
    'nvim-treesitter/nvim-treesitter',
    { run = ':TSUpdate' }
  }                             --treesitter
  use('nvim-treesitter/playground')
  use('windwp/nvim-ts-autotag') --tresitter autotag
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use 'haorenW1025/completion-nvim'           -- dependices for treesitter
  use 'nvim-treesitter/completion-treesitter' --completion for treesitter
  use 'kyazdani42/nvim-web-devicons'          --nerd icons
  use {
    'nvim-lualine/lualine.nvim',
  }                                     --lualine

  use 'jose-elias-alvarez/null-ls.nvim' --null-ls
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup({}) end
  }
  use {
    "terrortylor/nvim-comment",
    config = function() require('nvim_comment').setup() end
  }
  use 'leafOfTree/vim-vue-plugin'

  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x' }
  use 'nvim-lua/plenary.nvim'               --nvim-telescope plenary
  -- use { "nvim-telescope/telescope-file-browser.nvim" }--telescope-file-browser
  use 'mhartington/oceanic-next'            --oceanic-next theme
  use "folke/tokyonight.nvim"
  use "lukas-reineke/indent-blankline.nvim" -- brackets line
  use { 'echasnovski/mini.nvim' }
  use {
    'rcarriga/nvim-notify',
    config = function()
      require('notify').setup({
        background_colour = "#000000",
      })
    end
  }                                            --nvim-notify
  use('Tsuzat/NeoSolarized.nvim')              --NeoSolarized theme
  use { "catppuccin/nvim", as = "catppuccin" } --catppuccin theme

  -- Using Packer
  use 'navarasu/onedark.nvim' --onedark theme
  use { "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim", }
  }
  use 'folke/neodev.nvim'
  use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
  use 'theHamsta/nvim-dap-virtual-text'
  use 'Mofiqul/dracula.nvim'
  use 'mfussenegger/nvim-lint' --linter
  use {
    'glepnir/dashboard-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use 'christoomey/vim-tmux-navigator'
  use "fladson/vim-kitty" --kitty Syntak highlighter
end)
