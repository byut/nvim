local nightfox_status, nightfox = pcall(require, "nightfox")
if not nightfox_status then
    return
end

nightfox.setup({
    options = {
        styles = {
            comments = "italic",
        },
    },
})
