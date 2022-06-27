syntax enable
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set relativenumber
set nu
set hidden
set noerrorbells
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set nohlsearch
set nowrap
set scrolloff=8
set signcolumn=yes
set foldenable
set foldlevelstart=10
set foldnestmax=10
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set termguicolors
set clipboard=unnamedplus
set completeopt=menuone,noinsert,noselect
set colorcolumn=100

call plug#begin()
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'wbthomason/packer.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    Plug 'norcalli/snippets.nvim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'kien/ctrlp.vim'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-fugitive'
    Plug 'rust-lang/rust.vim'
    " Add maktaba and codefmt to the runtimepath.
    " (The latter must be installed before it can be used.)
    Plug 'google/vim-maktaba'
    Plug 'google/vim-codefmt'
    " Also add Glaive, which is used to configure codefmt's maktaba flags. See
    " `:help :Glaive` for usage.
    Plug 'google/vim-glaive'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

call glaive#Install()

augroup autoformat_settigns
    autocmd Filetype rust AutoFormatBuffer rustfmt
augroup END

autocmd vimenter * ++nested colorscheme gruvbox

let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

let g:Powerline_symbols = 'fancy'
let g:Powerline_mode_n = 'NORMAL'

let mapleader = " "

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ") })<CR>
nnoremap <leader>vd <esc>:call CocActionAsync('jumpDefinition')<CR>
nnoremap <leader>gp <esc>:!git pull<CR>
nnoremap <leader>gs <esc>:Git<CR>
nnoremap <leader>gd <esc>:Git diff<CR>
nnoremap <leader>ga <esc>:Git add %<CR>
nnoremap <leader>gc <esc>:Git commit<CR>
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>ff :NERDTreeFocus<CR>

nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
inoremap jk <esc>
nnoremap <leader>ww <esc>:w!<cr>
nnoremap <leader>wq <esc>:wq!<cr>
nnoremap <leader>qq <esc>:q!<cr>
nnoremap <c-F> <esc>:Files<cr>
nnoremap <c-T> <esc>:tabnew<cr>:Files<cr>
nnoremap <c-R> <esc>:tabn<cr>
nnoremap <c-Z> :UndotreeToggle<CR>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

augroup TRIM_ENDS
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
