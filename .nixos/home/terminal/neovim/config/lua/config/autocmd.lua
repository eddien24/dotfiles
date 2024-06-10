-- RNU off on insert
vim.wo.number = true
local numtogglegroup = vim.api.nvim_create_augroup("numtoggle", {})
vim.api.nvim_create_autocmd(
    { "BufEnter", "FocusGained", "InsertLeave" },
    {
        pattern = '*',
        callback = function()
            vim.wo.relativenumber = true
        end,
        group = numtogglegroup
    })

vim.api.nvim_create_autocmd(
    { "BufLeave", "FocusLost", "InsertEnter" },
    {
        pattern = '*',
        callback = function()
            vim.wo.relativenumber = false
        end,
        group = numtogglegroup
    })
