return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        dependecies = {
            "mason-org/mason.nvim",
            "saghen/blink.cmp",
        },
        config = function()
            local util = require("lspconfig.util")
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            -- Enable the following language servers
            local servers = {
                lua_ls = {
                    settings = {
                        Lua = {
                            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
                        },
                    },
                },

                ts_ls = {
                    filetypes = {
                        'vue',
                        'javascript',
                        'javascriptreact',
                        'javascript.jsx',
                        'typescript',
                        'typescriptreact',
                        'typescript.tsx',
                    },
                },

                laravel_ls = {
                    root_dir = util.root_pattern("artisan"),
                },

                csharp_ls = {},
                intelephense = {},
                html = {},
                cssls = {},
                angularls = {},
                vue_ls = {},
            }

            for name, server in pairs(servers) do
                server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
                vim.lsp.config(name, server)
                vim.lsp.enable(name)
            end
        end,
    },
}
