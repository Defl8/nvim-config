local create_autocmd = vim.api.nvim_create_autocmd;

vim.api.nvim_create_augroup("FileExtensionCommands", { clear = true })

-- Format Rust file on save, leverages Rust Fmt
create_autocmd("BufWritePost", {
    pattern = "*.rs",
    command = "RustFmt",
    group = "FileExtensionCommands",
})
