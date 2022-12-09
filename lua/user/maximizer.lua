local status_ok, maximizer = pcall(require, "maximizer")
if not status_ok then
    return
end

maximizer.setup({
    status = {
        enable = true, -- nil or false to disable
        text = "",
        blend = 10,
        position = {
            top = true,
            left = false,
        },
    }
})

