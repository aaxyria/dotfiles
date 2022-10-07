--     _  __             _         ____       __  _
--    / |/ /__ ___ _  __(_)_ _    / __ \___  / /_(_)__  ___  ___
--   /    / -_) _ \ |/ / /  ' \  / /_/ / _ \/ __/ / _ \/ _ \(_-<
--  /_/|_/\__/\___/___/_/_/_/_/  \____/ .__/\__/_/\___/_//_/___/
--                                   /_/

vim.g.did_load_filetypes = 1 -- Add support for nathom/filetype.nvim.

--- Style
-----------------------------------------------------------------------
-- Options that are usually related to editing and personal preference.

vim.opt.clipboard:append({ "unnamedplus" }) -- Share the clipboard between system and the editor.

-- Ignore case when searching while still being smart.
vim.o.ignorecase = true
vim.o.smartcase = true

-- Set indention style to four spaces.
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.autoindent = true
vim.wo.foldcolumn = "2" -- Add an extra margin to the left.
vim.o.cmdheight = 0
vim.cmd([[filetype plugin indent on]])

vim.o.mouse = "a" -- Enable mouse support.
vim.o.number = true -- Show numbers in line.
-- vim.wo.colorcolumn = "120" -- Show a column after 120-width characters.

vim.cmd([[ set undofile ]]) -- Keep the undo/redo history between sessions.
vim.o.lazyredraw = true -- Don't redraw while executing macros for better performance.
vim.o.hlsearch = true -- Highlight search results.
vim.o.incsearch = true -- Incremental search support.

vim.o.visualbell = false -- Remove some annoying sounds when typing.
vim.o.autoread = true -- Automatically update files when they are changed on disk.
vim.o.autochdir = true -- Set directory to the current file's directory automatically.
vim.cmd([[ highlight EndOfBuffer ctermfg=black ctermbg=black ]]) -- Remove tilde character from the start of the line.

-- Editing
-----------------------------------------------------------------------
-- Options that are related to editing and sugar.

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]]) -- Format on save.
vim.g.copilot_filetypes = { ["*"] = true, ["xml"] = true, ["yml"] = true, ["yaml"] = true } -- Enable copilot for all filetypes.
vim.opt.path:append({ "**" }) -- Search files down into subfolders as well.
vim.opt.wildignore:append({ "*/node_modules/*", "*/target/release/*", "*/target/debug/*", "*/.git/*", "*/.gradle/*" })
vim.opt.formatoptions:append({ "r" }) -- Add asterisks in block comments.
vim.wo.signcolumn = "yes" -- Show signs in the gutter.
