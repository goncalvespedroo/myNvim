return {
  -- Estética
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-tree/nvim-tree.lua" },

  -- Inteligência (LSP)
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  
  -- Java Especial
  { "mfussenegger/nvim-jdtls" },

  -- Auto-complete
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },

  -- Utilitários
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
}
