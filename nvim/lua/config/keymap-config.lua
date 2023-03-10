local set = vim.keymap.set

set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- set("x", "p", [["_dP]])
-- set("v", "J", ":m '>+1<CR>gv=gv")
-- set("v", "K", ":m '<-2<CR>gv=gv")
set("n", "<Leader>P", "\"+P", { silent = true })
set("n", "<Leader>p", "\"+p", { silent = true })

set("i", "jj", "<Esc>")
set("v", "<Leader>y", "\"+y", { silent = true })
set("v", "<Leader>P", "\"+P", { silent = true })
set("v", "<Leader>p", "\"+p", { silent = true })

-- set('n', '<leader>w', "<cmd>:w<cr>")
-- set("n", "<C-h>", "<C-w>h")
-- set("n", "<C-j>", "<C-w>j")
-- set("n", "<C-k>", "<C-w>k")
-- set("n", "<C-l>", "<C-w>l")
set("n", "<leader>h", "<cmd>:noh<cr>")

-- diagnostic
set('n', '[e', function ()
	vim.diagnostic.goto_prev { severity = vim.diagnostic.severity.ERROR }
end)
set('n', ']e', function()
	vim.diagnostic.goto_next { severity = vim.diagnostic.severity.ERROR }
end)
set('n', '[w', function ()
	vim.diagnostic.goto_prev {  }
end)
set('n', ']w', function()
	vim.diagnostic.goto_next {}
end)


-- set('n', '<leader>Q', vim.diagnostic.open_float)
-- set('n', '<leader>q', vim.diagnostic.setloclist)

-- -- Telescope
set('n', '<leader>f', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
set('n', '<leader>go', require('telescope.builtin').git_status, { desc = 'Open Changed Files' })
set('n', '<leader>sb', function() require('telescope.builtin').buffers { previewer = true } end,
	{ desc = 'Open Buffer File' })
set('n', '<leader>q', function() require('telescope.builtin').quickfix { previewer= true, path_display = { shorten = { len = 3 },}} end, { desc = '[S]earch [Q]uickfix' })
set('n', '<leader>sq', function() require('telescope.builtin').quickfixhistory { path_display = { shorten = { len = 3 },}} end, { desc = '[S]earch [Q]uickfix History' })
set('n', '<leader>sh', require('telescope.builtin').search_history, { desc = '[S]earch [H]istory' })
set('n', '<leader>sj', require('telescope.builtin').jumplist, { desc = '[S]earch [J]umplist' })
set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
set({ 'n', 'v'}, '<leader>st', function() require('telescope.builtin').live_grep { previewer = true, path_display = { shorten = { len = 3 },}, glob_pattern = { '!**/package-lock.json', '!**/static/local_cache/**' }} end, { desc = '[S]earch by [G]rep' })
set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
set('n', '<leader>o', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
-- set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
set('n', '<leader>sf', function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer]' })

-- Bufferline
set("n", "<S-l>", ":BufferLineCycleNext<CR>", { silent = true, desc = "Switch to left buffer " })
set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { silent = true, desc = "Switch to right buffer " })
set("n", "<Leader>bl", ":BufferLineCloseRight<CR>", { silent = true, desc = 'Close All Buffer To The Right' })
set("n", "<Leader>bh", ":BufferLineCloseLeft<CR>", { silent = true, desc = 'Close All Buffer To The Left' })
set("n", "<Leader>bq", ":BufferLineTogglePin<CR>", { silent = true, desc = 'Pin Buffer' })
set("n", "<Leader>bp", ":BufferLinePick<CR>", { silent = true, desc = 'Pick A Buffer' })
set("n", "<Leader>bc", ":BufferLinePickClose<CR>", { silent = true, desc = 'Select A Buffer To Close' })

-- set("i", "<C-]'>", "<Plug>(copilot-next)", { silent = true })
-- set("i", "<C-[>", "<Plug>(copilot-previous)", { silent = true })


-- NVIM TREE
set("n", "<Leader>e", ":NvimTreeToggle<CR>", { silent = true, desc = 'Toggle NVIM Tree' })
