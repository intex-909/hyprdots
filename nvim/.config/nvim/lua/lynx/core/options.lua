local opt = vim.opt

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- opt.autochdir = true -- change working diretory on open file, switch buffer, delete buffer etc.

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- Decrease update time
opt.updatetime = 250

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- Use system clipboard
opt.clipboard = "unnamedplus"

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- opt.hlsearch = true
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Set completeopt to have a better completion experience
opt.completeopt = "menuone,noselect"

-- Concealer for Neorg
-- opt.conceallevel=2
opt.conceallevel = 0 -- so that `` is visible in markdown files

-- turn off swapfile
opt.swapfile = false

-- Allow mouse
opt.mouse = "a"
-- opt.mouse = "" -- disable mouse

-- Turn off when lualine is installed
opt.showmode = false

-- Go to newline/previous line if cursor is at the end/beginning of the line
-- while moving with h or l
vim.cmd("set whichwrap+=<,>,[,],h,l")

-- Restore cursor on nvim exit
vim.api.nvim_create_autocmd("VimLeave", {
	callback = function()
		vim.opt.guicursor = "a:ver25"
	end,
})
