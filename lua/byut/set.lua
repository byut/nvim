local options = {
    clipboard = "unnamedplus", -- sync Neovim with system clipboard
    updatetime = 300, -- after this many milliseconds flush swap file
    exrc = true, -- automatically execute .nvim.lua, .nvimrc, and .exrc files
    -- indenting & formatting ---------------------------------------------------------------------------------
    smarttab = true, -- use shiftwidth when inserting <Tab>
    smartcase = true, -- no ignore case when pattern has uppercase
    smartindent = true, -- smart auto-indentation
    expandtab = true, -- insert spaces instead of tabs
    softtabstop = 4, -- number of spaces that <Tab> uses while editing
    shiftwidth = 4, -- number of spaces to use for an auto-indent step
    tabstop = 4, -- number of spaces that a <Tab> in the file
    -- window -------------------------------------------------------------------------------------------------
    termguicolors = true, -- enable 24-bit RGB color
    relativenumber = true, -- show the line number relative to the current line
    number = true, -- show the line number in front of each line
    numberwidth = 4, -- minimal number of columns to use for the line number
    cmdheight = 1, -- number of screen lines to use for the command-line
    scrolloff = 10, -- minimal number of screen lines to keep above and below the cursor
    sidescrolloff = 10, -- minimal number of screen columns to keep to the left and to the right of the cursor
    splitright = true, -- force vertical splits to the right of the current window
    splitbelow = true, -- force horizontal splits below the current window
    showmode = false, -- do not show current mode on the status line
    cursorline = true, -- highlight the screen line of the cursor
    wrap = false, -- display each line in a single row
    signcolumn = "yes", -- always display the sign column
    -- file ---------------------------------------------------------------------------------------------------
    fileencoding = "utf-8", -- file-content encoding for the current buffer
    undofile = true, -- save undo history to an undo file
    swapfile = false, -- do not use a swapfile for a buffer
    backup = false, -- do not keep a backup before overwriting a file
    writebackup = false, -- do not make a backup before overwriting a file
    -- spell checking -----------------------------------------------------------------------------------------
    spell = true, -- turn on spell checking
    spelllang = "en_us", -- recognize US English words and check their spelling
    -- search -------------------------------------------------------------------------------------------------
    ignorecase = true, -- ignore case in search patterns, completion, and when searching the tags file
    hlsearch = true, -- when there is a previous search pattern, highlight all its matches
}

-- disable providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

for key, value in pairs(options) do
    vim.opt[key] = value
end
