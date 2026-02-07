return {
    "uga-rosa/ccc.nvim",
    event = "BufRead",
    opts = {
        highlighter = {
            auto_enable = true,
            lsp = true,
        },
    },
    keys = {
        {
            "<leader>cc",
            "<CMD>CccHighlighterToggle<CR>",
            desc = "Toogle Color Highlighter"
        },
    }
}
