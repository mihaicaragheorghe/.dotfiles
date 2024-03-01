local fn = vim.fn
local cmd = vim.cmd

-- automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer..."
  cmd [[packadd packer.nvim]]
end

-- autocommand that reloads neovim whenever you save the plugins.lua file
cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- import packer safely
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- add list of plugins to install
return packer.startup(function(use)
    use "wbthomason/packer.nvim" -- packer
    
     -- useful lua functions used by lots of plugins
    use "nvim-lua/plenary.nvim"

    -- colorschemes
    use "bluz71/vim-moonfly-colors"
    use "AlexvZyl/nordic.nvim"

    -- an implementation of the Popup API from vim in neovim
    use "nvim-lua/popup.nvim"

    -- navigate between tmux panes and vim splits
    use "christoomey/vim-tmux-navigator"

    -- maximize and restore current window
    use "szw/vim-maximizer"

    -- surroundings
    use "tpope/vim-surround"

    -- file explorer
    use "nvim-tree/nvim-tree.lua"

    -- icons
    use "nvim-tree/nvim-web-devicons"

    -- commenting with gc
    use "numToStr/Comment.nvim"

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
