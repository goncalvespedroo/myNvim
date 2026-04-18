-- 1. Setup do Mason
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "ts_ls", "html", "cssls", "jdtls" }
})

-- 2. Configuração dos servidores (Padrão 0.11)
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

-- Lista de servidores para configurar
local servers = { "pyright", "ts_ls", "html", "cssls" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup({
        capabilities = capabilities,
    })
end

-- 3. Configuração do Autocomplete (CMP)
local cmp = require('cmp')
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  })
})
