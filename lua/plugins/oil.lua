return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    priority = 1000,
    opts = {
        columns = {
            { "size",        highlight = "Special" },
            { "mtime",       highlight = "Comment", format = "%b %d %H:%M" },
            { "permissions", highlight = "Function" },
            "icon"
        },
        buf_options = {
            buflisted = true,
            bufhidden = "hide",
        },
        delete_to_trash = true,
        view_options = { show_hidden = true, },
    },
    keys = {
        { "<leader>o", "<CMD>Oil<CR>", desc = "Oil", },
    }
}
