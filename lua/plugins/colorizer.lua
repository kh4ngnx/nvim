return {
    "norcalli/nvim-colorizer.lua",
    cmd = "ColorizerToggle",
    opts = {
        css = { css = true, },
        html = { names = false, },
    },
    keys = {
        {
            "<leader>cc",
            function()
                vim.cmd("ColorizerToggle")
            end,
            desc = "Toggle Colorizer",
        },
    },
}
