vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.exrc = true
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.number = true
vim.opt.showcmd = true
vim.opt.cursorline = true
vim.opt.wildmenu = true
vim.opt.lazyredraw = true
vim.opt.showmatch = true
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.foldenable = true
vim.opt.foldlevelstart = 10
vim.opt.foldnestmax = 10
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.clipboard = unnamedplus
vim.opt.completeopt = menuone,noinsert,noselect
vim.opt.colorcolumn = "100"

vim.g.airline_theme = "gruvbox"
vim.g.airline_powerline_fonts = 1
vim.api.nvim_exec('let g:airline#extensions#tabline#formatter = "unique_tail"', false)


vim.g.ctrlp_match_window = "bottom,order:ttb"
vim.g.ctrlp_switch_buffer = 0
vim.g.ctrlp_working_path_mode = 0
vim.g.ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

vim.g.Powerline_symbols = "fancy"
vim.g.Powerline_mode_n = "NORMAL"
vim.g.completion_enable_auto_popup = 1

vim.g.NERDTreeShowHidden = 1

vim.api.nvim_exec([[
augroup autoformat_settigns
    autocmd Filetype rust AutoFormatBuffer rustfmt
augroup END
]],
false)
