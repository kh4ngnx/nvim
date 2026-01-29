return {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {
        columns = {
            { "size",        highlight = "Special" },
            { "mtime",       highlight = "Comment", format = "%b %d %H:%M" },
            { "permissions", highlight = "Function" },
            "icon"
        },
        delete_to_trash = true,
        view_options = { show_hidden = true, },
    },
    keys = {
        {
            "<leader>o",
            function()
                vim.cmd("Oil")
            end,
            desc = "Oil",
        },
    }
}
