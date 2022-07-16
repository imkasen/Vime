-- make sure to maintain the structure of `core/default_config.lua` here
local M = {}

local override = require "custom.override"

M.options = {
    -- change default options
    user = function()
        require "custom.options"
    end
}

M.plugins = {

    options = {
        -- lsp
        lspconfig = {
            setup_lspconf = "custom.plugins.lspconfig",
        },
    },

    -- override default config of a plugin
    override = {
        ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
        ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
        ["NvChad/ui"] = {
            statusline = {
                separator_style = "arrow", -- default/round/block/arrow
            },
        },
    },

    -- add plugins
    user = require "custom.plugins"
}

-- customize mappings
M.mappings = require "custom.mappings"

return M
