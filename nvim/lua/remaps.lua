vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ps", function()
    require('telescope').setup({
        defaults = {
            file_ignore_patterns = { "^./.git/", "^imgui/", "^vendor/", "^CMake" },
        }
    })
    require('telescope.builtin').live_grep()
end)
vim.keymap.set("n", "<leader>psa", function()
    require('telescope').setup({
        defaults = {
            file_ignore_patterns = {},
        }
    })
    require('telescope.builtin').live_grep()
end)
vim.keymap.set("n", "<c-F>", function()
    require('telescope.builtin').find_files()
end)
vim.keymap.set("n", "<c-T>", function()
    vim.cmd(':tabnew')
    require('telescope.builtin').find_files()
end)
vim.keymap.set("n", "<leader>fb", function()
    require('telescope.builtin').buffers()
end)
vim.keymap.set("n", "<leader>fn", function()
    require('telescope.builtin').help_tags()
end)

vim.keymap.set("n", "<leader>gh", function()
    require("harpoon.mark").add_file()
end)

vim.keymap.set("n", "<leader>gg", function()
    require("harpoon.ui").toggle_quick_menu()
end)

vim.keymap.set("n", "<leader>1", function()
    require("harpoon.ui").nav_file(1)
end)

vim.keymap.set("n", "<leader>2", function()
    require("harpoon.ui").nav_file(2)
end)

vim.keymap.set("n", "<leader>3", function()
    require("harpoon.ui").nav_file(3)
end)

vim.keymap.set("n", "<leader>4", function()
    require("harpoon.ui").nav_file(4)
end)

vim.keymap.set("n", "<leader>cc", "<cmd>lua vim.lsp.buf.code_action()<CR>")

vim.keymap.set("n", "<leader>vd", "<esc>:call CocActionAsync('jumpDefinition')<CR>")
vim.keymap.set("n", "<leader>gp", "<esc>:!git pull<CR>")
vim.keymap.set("n", "<leader>gs", "<esc>:Git<CR>")
vim.keymap.set("n", "<leader>gd", "<esc>:Git diff<CR>")
vim.keymap.set("n", "<leader>ga", "<esc>:Git add %<CR>")
vim.keymap.set("n", "<leader>gc", "<esc>:Git commit<CR>")
vim.keymap.set("n", "<leader>ft", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<leader>ff", ":NERDTreeFocus<CR>")

vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "B", "^")
vim.keymap.set("n", "E", "$")
vim.keymap.set("n", "$", "<nop>")
vim.keymap.set("n", "^", "<nop>")
vim.keymap.set("v", "B", "^")
vim.keymap.set("v", "E", "$")
vim.keymap.set("v", "$", "<nop>")
vim.keymap.set("v", "^", "<nop>")
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<leader>ww", "<esc>:w!<cr>")
vim.keymap.set("n", "<leader>wq", "<esc>:wq!<cr>")
vim.keymap.set("n", "<leader>qq", "<esc>:q!<cr>")
vim.keymap.set("n", "<c-R>", "<esc>:tabn<cr>")
vim.keymap.set("n", "<c-Z>", ":UndotreeToggle<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.api.nvim_exec('inoremap <expr> <Tab>   pumvisible() ? "\\<C-n>" : "\\<Tab>"', false)
vim.api.nvim_exec('inoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', false)
