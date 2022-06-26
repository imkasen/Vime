-- https://github.com/neovim/nvim-lspconfig
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- https://github.com/williamboman/nvim-lsp-installer

local M = {}

M.setup_lsp = function(attach, capabilities)
    local lspconfig = require "lspconfig"

    -- lspservers with default config
    local servers = {
        -- "awk_ls",
        "bashls",
        "clangd",
        "cmake",
        "cssls",
        -- "cssmodules_ls",
        "dockerls",
        -- "dotls",
        -- "eslint",
        "gopls",
        "html",
        "jsonls",
        -- "perlls",
        "pyright",
        -- "rust_analyzer",
        -- "sqlls",
        "sumneko_lua",
        -- "tailwindcss",
        "tsserver",
        "vimls",
        -- "vuels",
        "yamlls",
     }

    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            on_attach = attach,
            capabilities = capabilities,
        }
    end
end

return M