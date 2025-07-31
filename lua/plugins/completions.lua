-- This block makes a menu like blink for the native auto complete
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end
})
vim.cmd("set completeopt+=noselect")

-- vim.keymap.set("i", "<C-X>", "<C-X><C-O>", { desc = "Shorter omnifunc" })
