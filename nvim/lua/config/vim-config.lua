-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.relativenumber = true
vim.o.number = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.cursorline = true

-- Decrease update time
-- vim.o.updatetime = 250
-- vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
vim.o.scrolloff = 8
    --   pcall(vim.cmd, "colorscheme kanagawa")
