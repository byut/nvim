return {
    "vyfor/cord.nvim",
    build = ":Cord update",
    config = function()
        require("cord").setup({
            editor = { client = "neovim" },
        })
    end,
}
