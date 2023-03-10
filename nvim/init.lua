require('config/base-config')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('config/vim-config')
require("lazy").setup("plugins")

require('config/fold-config')
require('config/keymap-config')

local function open_nvim_tree(data)
  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1
  if not directory then
    return
  end
  -- change to the directory
  vim.cmd.cd(data.file)
  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-L>", '<Plug>(copilot-next)', { silent = true })
vim.api.nvim_set_keymap("i", "<C-H>", '<Plug>(copilot-previous)', { silent = true })




-- vim.g.copilot_no_tab_map = true
-- vim.g.copilot_assume_mapped = true
-- vim.g.copilot_tab_fallback = ""

pcall(vim.cmd, "silent! autocmd! filetypedetect BufRead,BufNewFile *.tf")
pcall(vim.cmd, "autocmd BufRead,BufNewFile *.hcl set filetype=hcl")
pcall(vim.cmd, "autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl")
pcall(vim.cmd, "autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform")
pcall(vim.cmd, "autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json")


pcall(vim.cmd, "colorscheme nightfly")

