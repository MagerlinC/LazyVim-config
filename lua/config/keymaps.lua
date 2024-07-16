-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "gb", "<C-o>", { silent = true, desc = "Go back" })

-- Visual mode move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selected lines up" })

-- Keep cursor in middle while going up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Dont die on Q
vim.keymap.set("n", "Q", "<nop>")

-- Quick fix list navigation
vim.keymap.set("n", "<C-k>", "<cmd>lnext<CR>zz", { silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>lprev<CR>zz", { silent = true })

-- Change all occurences of current word
vim.keymap.set(
  "n",
  "<leader>cw",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Change all occurences of current word" }
)
