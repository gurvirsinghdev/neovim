local opt = vim.opt

-- Use spaces instead of tabs for indentation
opt.expandtab = true

-- Number of spaces a <Tab> counts for
opt.tabstop = 2

-- Number of spaces to use for each step of (auto)indent
opt.shiftwidth = 2

-- When softtabstop is -1, is uses the value of 'shiftwidth'
opt.softtabstop = -1

-- Enabling Diagnostics
vim.diagnostic.config({
	underline = true,
	virtual_text = true,
	--virtual_lines = true
})

-- Enabling relative line numbers
opt.number = true
opt.relativenumber = true

-- Enabling cursorline
opt.cursorline = true
