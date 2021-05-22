directions = {
    up = 0,
    down = 1,
    right = 2,
    left = 3,

    horizontal = 4,
    vertical = 5
}

function split(direction)
    if direction == directions.horizontal then
        vim.cmd("vsplit")
    elseif direction == directions.vertical then
        vim.cmd("split")
    else
        error("Split direction needs to be one of {directions.horizontal, directions.vertical}")
    end
end

function switch_win(direction)
    if direction == directions.up then
        vim.api.nvim_input("<C-w>k")
    elseif direction == directions.down then
        vim.api.nvim_input("<C-w>j")
    elseif direction == directions.right then
        vim.api.nvim_input("<C-w>l")
    elseif direction == directions.left then
        vim.api.nvim_input("<C-w>h")
    end
end

function close_win()
    vim.cmd("q")
end
