local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>") -- hit jk to escape, might turn off
keymap.set("n", "<leader>nh", ":nohl<CR>") -- hit " nh" to get rid of highlights
keymap.set("n", "x", '"_x') -- doens't copy letter into clipboard
keymap.set("n", "<leader>+", "<C-a>") -- increment numbers
keymap.set("n", "<leader>-", "<C-x>") -- decrement numbers

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

local function toggle_maximize()
	if vim.t.maximized_layout then
		vim.cmd(vim.t.maximized_layout)
		vim.t.maximized_layout = nil
	else
		vim.t.maximized_layout = vim.fn.winrestcmd()
		vim.cmd("wincmd |")
		vim.cmd("wincmd _")
	end
end

vim.keymap.set("n", "<leader>z", toggle_maximize, { desc = "Toggle window maximize" })

-- Horizontal terminal at the bottom
vim.keymap.set("n", "<leader>th", function()
  vim.cmd("botright split")
  vim.cmd("resize 15")
  vim.cmd("terminal")
  vim.cmd("startinsert")
end, { desc = "Terminal: horizontal" })

-- Vertical terminal on the right
vim.keymap.set("n", "<leader>tv", function()
  vim.cmd("botright vsplit")
  vim.cmd("terminal")
  vim.cmd("startinsert")
end, { desc = "Terminal: vertical" })

-- Leave terminal-input mode
vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], {
  desc = "Exit terminal mode",
})
