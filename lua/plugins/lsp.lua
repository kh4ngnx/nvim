return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        dependecies = {
            "mason-org/mason.nvim",
        },
        config = function()
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

                html = {},
                laravel_ls = {},
                csharp_ls = {},
                intelephense = {},
                cssls = {},
                angularls = {},
                vue_ls = {},
                marksman = {},
            }

            for name, server in pairs(servers) do
                server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
                vim.lsp.config(name, server)
                vim.lsp.enable(name)
            end
        end,
    },
}
