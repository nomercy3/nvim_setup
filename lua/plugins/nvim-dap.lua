-- Python debugger
return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    local dap_python = require("dap-python")
    local wk = require("which-key")

    dap_python.setup("~/.virtualenvs/debugpy/venv/bin/python")

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    -- vim.keymap.set('n', '<leader>dbt', dap.toggle_breakpoint, {})
    -- vim.keymap.set('n', '<leader>dbc', dap.continue, {})
    wk.add({
      { "<leader>dbt", dap.toggle_breakpoint, desc = "Toggle Breakpoint" },
      { "<leader>dbc", dap.continue, desc = "Continue" },
      { "<leader>dpt", dap_python.test_method, desc = "Run Test Method" },
      { "<leader>dpc", dap_python.test_class, desc = "Run Test Class" },
    })
    
  end,

}
