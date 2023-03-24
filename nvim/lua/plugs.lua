local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'wbthomason/packer.nvim'
    Plug 'nvim-lua/completion-nvim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'kien/ctrlp.vim'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
    Plug 'junegunn/fzf.vim'
    Plug('neoclide/coc.nvim', {branch = 'release'})
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-fugitive'
    Plug 'rust-lang/rust.vim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'windwp/nvim-autopairs'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'nvim-lua/completion-nvim'
    Plug 'ziglang/zig.vim'
    -- Add maktaba and codefmt to the runtimepath.
    -- (The latter must be installed before it can be used.)
    Plug 'google/vim-maktaba'
    Plug 'google/vim-codefmt'
    -- Also add Glaive, which is used to configure codefmt's maktaba flags. See
    -- `:help :Glaive` for usage.
    Plug 'google/vim-glaive'
    Plug 'nvim-telescope/telescope.nvim'
    Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.cmd['TSUpdate']})
vim.call('plug#end')

vim.call('glaive#Install')
