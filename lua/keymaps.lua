vim.g.mapleader = " "

-- replace selected text WITHOUT losing what you yanked
vim.keymap.set("x", "p", [["_dP]], {desc = "Paste over selection without losing yanked text"})

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Moving lines
vim.keymap.set("v", "<A-down>", ":m '>+1<CR>gv=gv", {desc = "moves lines down in visual selection"})
vim.keymap.set("v", "<A-up>", ":m '<-2<CR>gv=gv", {desc = "moves lines up in visual selection"})

vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })
