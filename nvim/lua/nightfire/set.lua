vim.opt.nu = true

vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.cc = '140'
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir/"

vim.wo.relativenumber = true

vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.opt.guicursor = "a:ver25"  -- Reset to the default cursor shape (vertical bar) when exiting
  end,
})
