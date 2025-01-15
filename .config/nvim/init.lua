-- Set <space> as the leader key.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Setting options ]]
-- enable nerd font.
vim.g.have_nerd_font = true

-- Make line numbers default.
vim.opt.number = true
vim.opt.relativenumber = true

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

-- Enable break indent.
vim.opt.breakindent = true

-- Save undo history.
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

-- [[ Basic Keymaps ]]
local keyset = vim.keymap.set
keyset("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- TIP: Disable arrow keys in normal mode
keyset("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keyset("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keyset("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keyset("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

keyset("n", "<leader>ff", ":Telescope find_files<cr>")
keyset("n", "<leader>fh", ":Telescope find_files hidden=true<cr>")
-- [[ Basic Autocommands ]]
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

require("config.lazy")
