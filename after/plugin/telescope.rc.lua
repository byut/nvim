local telescope_status, telescope = pcall(require, "telescope")
if not telescope_status then
    return
end

telescope.setup({
    defaults = {
        prompt_prefix = "> ",
        selection_caret = "> ",
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
        selection_strategy = "closest",
        path_display = { "truncate" },
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        layout_config = { horizontal = { prompt_position = "top" } },
        initial_mode = "insert",
    },
    pickers = {
        find_files = {
            previewer = false,
            respect_gitignore = true,
            disable_devicons = true,
            hidden = false,
        },
    },
})

local builtin_status, builtin = pcall(require, "telescope.builtin")
if builtin_status then
    local nvim = require("byut.utils.nvim")
    nvim.keymap.set("<space>ff", builtin.find_files)
    nvim.keymap.set("<space>fd", builtin.lsp_document_symbols)
end
