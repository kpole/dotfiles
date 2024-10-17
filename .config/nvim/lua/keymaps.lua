-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- bufferline
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)

-- Telescope
-- 查找文件
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", opts)
-- 全局搜索
vim.keymap.set("n", "<C-f>", ":Telescope live_grep<CR>", opts)
-- buffers
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts)
-- help tag
vim.keymap.set("n", "<leader>fh", ":Telescope help tags<CR>", opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)


-- nvim-tree
vim.keymap.set("n", "<A-e>", ":NvimTreeToggle<CR>", opt)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opt)
vim.keymap.set("n", "<leader>t", ":NvimTreeFocus<CR>", opt)
vim.keymap.set("n", "<leader>ff", ":NvimTreeFindFile<CR>", opt)
vim.keymap.set("n", "<leader>c", ":NvimTreeFindFileToggle<CR>", opt)


