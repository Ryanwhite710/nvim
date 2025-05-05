-- For running post command similiar to soap UI
vim.api.nvim_create_user_command("GateArrive", function()
  local result = vim.fn.system({
    "curl",
    "-X",
    "POST",
    "-H",
    "Content-Type: text/xml;charset=UTF-8",
    "-H",
    'SOAPAction: ""',
    "--data",
    "@processAutoGateArrival.xml",
    "https://nissanuatusapp.tecsys.cloud/elite_test_98x/ws/WmsWebService",
  })

  -- Open results in a scratch buffer
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(result, "\n"))
  vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = math.floor(vim.o.columns * 0.8),
    height = math.floor(vim.o.lines * 0.8),
    row = 2,
    col = 2,
    border = "rounded",
  })
end, { desc = "Send SOAP Request via Curl" })

-- For running post command similiar to soap UI
vim.api.nvim_create_user_command("GateDepart", function()
  local result = vim.fn.system({
    "curl",
    "-X",
    "POST",
    "-H",
    "Content-Type: text/xml;charset=UTF-8",
    "-H",
    'SOAPAction: ""',
    "--data",
    "@processAutoGateDepart.xml",
    "https://nissanuatusapp.tecsys.cloud/elite_test_98x/ws/WmsWebService",
  })

  -- Open results in a scratch buffer
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(result, "\n"))
  vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = math.floor(vim.o.columns * 0.8),
    height = math.floor(vim.o.lines * 0.8),
    row = 2,
    col = 2,
    border = "rounded",
  })
end, { desc = "Send SOAP Request via Curl" })

vim.keymap.set("n", "<leader>of", function()
  local path = vim.fn.expand("~/Mental Database")

  -- Create floating window
  local buf = vim.api.nvim_create_buf(false, true)

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = 2,
    col = 2,
    border = "rounded",
    style = "minimal",
  })

  -- Open Oil.nvim inside the buffer at the path
  vim.cmd("e oil://" .. path)
end, { desc = "Open Mental Database (Floating)" })
