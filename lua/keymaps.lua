local keymap = vim.keymap.set

-- Abrir NvimTree (Explorador) com Espaço + e
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })

-- Telescope (Busca de arquivos)
local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})

-- LSP shortcuts
keymap('n', 'gd', vim.lsp.buf.definition, {})
keymap('n', 'K', vim.lsp.buf.hover, {})
-- Adicione isso ao seu keymaps.lua se ainda não tiver
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Ir para definição" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Ver documentação" })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Ações de código" })
