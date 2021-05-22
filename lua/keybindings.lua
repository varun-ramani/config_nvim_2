require('vimp')
require('utils')

local telescope = require('telescope.builtin')

vimp.nmap('<space>', '<leader>')

-- Keybindings for general editor navigation

vimp.nnoremap('<leader>sl', function()
    split(directions.horizontal)
    switch_win(directions.right)
end)

vimp.nnoremap('<leader>sh', function()
    split(directions.horizontal)
    switch_win(directions.left)
end)

vimp.nnoremap('<leader>sk', function()
    split(directions.vertical)
    switch_win(directions.up)
end)

vimp.nnoremap('<leader>sj', function()
    split(directions.vertical)
    switch_win(directions.down)
end)

vimp.nnoremap('<leader>wl', function()
    switch_win(directions.right)
end)

vimp.nnoremap('<leader>wh', function()
    switch_win(directions.left)
end)

vimp.nnoremap('<leader>wk', function()
    switch_win(directions.up)
end)

vimp.nnoremap('<leader>wj', function()
    switch_win(directions.down)
end)

vimp.nnoremap('<leader>q', close_win)

-- Keybindings for Telescope
vimp.nmap('<C-p>', ':Telescope find_files<CR>')
vimp.nmap('<C-s>', ':Telescope live_grep<CR>')
vimp.nmap('<C-b>', ':Telescope file_browser<CR>')
