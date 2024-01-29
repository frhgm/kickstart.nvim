-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
vim.o.guifont = "JetBrainsMono NF:h9"

vim.opt.shell = 'pwsh'

--para marcar linea actual, y asi no perderme
vim.opt.cursorline = true;

--para darme una idea de donde esta el final de la linea
vim.opt.colorcolumn = '90';

--al fin deshabilito wrap!
vim.opt.wrap = false;

--configuraciones para que al llegar al borde de la pantalla pueda ver unas lineas o caracteres mas
--demasiado util
vim.opt.scrolloff = 8;
vim.opt.sidescrolloff = 8;
