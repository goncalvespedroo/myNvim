-- Instalação automática do Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Carrega as opções e plugins
require("vim_options")
require("lazy").setup("plugins")
require("lsp_config") -- Vamos criar este arquivo abaixo
require("keymaps")    -- Atalhos personalizados

-- Configurações visuais (do print original)
vim.cmd.colorscheme "catppuccin"
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#e5c890' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ef9f76', bold = true })

-- Ativa o explorador de arquivos
require("nvim-tree").setup()
