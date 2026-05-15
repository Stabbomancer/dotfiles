local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup({
  spec = {
    -- add your plugins herei
    { import = "plugins" },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = { styles = { keywords = { italic = false }, comments = { italic = false }, }, }, },
  },
  -- Configure any other settings here
  install = { colorscheme = { "tokyonight" } },
  checker = { enabled = true }, -- automatically check for plugin updates
})

