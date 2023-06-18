local auto_session = require("auto-session")

local conf = {
    post_restore_cmds = {
        function()
            -- Close Nvim Tree buffer from the previous session
            local nvim_tree_buffer_name = "NvimTree_1"

            local buffers = vim.api.nvim_list_bufs()
            for _, buffer_id in ipairs(buffers) do
                local name = vim.api.nvim_buf_get_name(buffer_id)
                if string.find(name, nvim_tree_buffer_name) then
                    vim.api.nvim_buf_delete(buffer_id, { force = true })
                end
            end
        end
    }
}

auto_session.setup(conf)

