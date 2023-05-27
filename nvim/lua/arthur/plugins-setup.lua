-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])


local status, packer = pcall(require, "packer")
if not status then
	return
end
return packer.startup(function(use) 
-- list your plugins here
	use("wbthomason/packer.nvim") -- package manager
	use("ErichDonGubler/vim-sublime-monokai") -- colorscheme
	use("ap/vim-css-color") -- css colors visualizer
	use("ryanoasis/vim-devicons") -- icons for files
	use("vim-airline/vim-airline") -- bottom bar
	use("preservim/nerdtree") -- tree file manager
	use("pangloss/vim-javascript") -- javascript indentation
	use("MaxMEllon/vim-jsx-pretty") --syntax highlighting
	use("elzr/vim-json") --json highlitghing
	use("lukas-reineke/indent-blankline.nvim") -- indentation 
	use("nanozuki/tabby.nvim") -- multi-tab nvim
    use("jiangmiao/auto-pairs") -- pairs autocompletion
	use("nvim-lua/plenary.nvim") -- lua library
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder
	use("ervandew/supertab") -- tab autocompletion	
	use {'neoclide/coc.nvim', branch = 'release'} -- CoC completion
	if packer_boostrap then
		require("packer").sync()
	end
end)