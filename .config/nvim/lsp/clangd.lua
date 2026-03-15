return {
    cmd =  { "clangd", "--fallback-style=webkit" },
    filetypes = { "c", "cpp" },
    root_markers = {
        { ".clangd", "compile_commands.json" },
        ".git"
    },
}
