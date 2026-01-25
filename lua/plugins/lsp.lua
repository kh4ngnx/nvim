-- Enable all LSPs
vim.lsp.enable({
    "lua_ls", "csharp_ls", "intelephense",
    "html", "cssls", "ts_ls", "tailwindcss", "angularls",
    "marksman",
})

-- Config each LSP
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        },
    },
})

return {
    "mason-org/mason.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    event = { "BufRead" },
    keys = {
        {
            "<leader>M",
            "<CMD>Mason<CR>",
            desc = "Mason",
        },
    },
    opts = {}
}
