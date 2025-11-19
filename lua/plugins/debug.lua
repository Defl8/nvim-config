return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"leoluz/nvim-dap-go",
	},
	name = "nvim-dap",
	keys = {
		{
			"<leader>b",
			function()
				require("dap").toggle_breakpoint()
			end,
			mode = "n",
			desc = "Toggle Breakpoint",
		},
		{
			"<leader>r",
			function()
				require("dap").continue()
			end,
			mode = "n",
			desc = "New or continue debug session",
		},
		{
			"<leader>gb",
			function()
				require("dap").run_to_cursor()
			end,
			mode = "n",
			desc = "Run the program to cursor location",
		},
		{
			"<F1>",
			function()
				require("dap").step_into()
			end,
			mode = "n",
			desc = "Step into",
		},
		{
			"<F2>",
			function()
				require("dap").step_over()
			end,
			mode = "n",
			desc = "Step over",
		},
		{
			"<F3>",
			function()
				require("dap").step_out()
			end,
			mode = "n",
			desc = "Step out",
		},
		{
			"<F4>",
			function()
				require("dap").step_back()
			end,
			mode = "n",
			desc = "Step back",
		},
		{
			"<F10>",
			function()
				require("dap").restart()
			end,
			mode = "n",
			desc = "Restart Session",
		},
		{
			"<leader>x",
			function()
				require("dap").terminate()
			end,
			mode = "n",
			desc = "Terminate Session",
		},
		{
			"<leader>k",
			function()
				require("dapui").eval(nil, { enter = true })
			end,
			mode = "n",
			desc = "Terminate Session",
		},
	},
	config = function()
		local dapui = require("dapui")
		local dap = require("dap")
		require("dap-go").setup()

		dapui.setup()

		-- Tells UI to open when a debug sessions is started
		-- Closes when session ends
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.after.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.after.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
