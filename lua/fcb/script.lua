-- Create a custom namespace. This will aggregate signs from all other
-- namespaces and only show the one with the highest severity on a
-- given line
local ns = vim.api.nvim_create_namespace("my_namespace")
-- Get a reference to the original signs handler
local orig_signs_handler = vim.diagnostic.handlers.signs

-- Function to check if a line contains `Admitted.`
local function line_contains_admitted(line)
  return string.find(line, "Admitted.") ~= nil
end

-- Override the original signs handler
vim.diagnostic.handlers.signs = {
  show = function(namespace, bufnr, diagnostics, opts)
    -- Get all lines in the buffer
    local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

    -- Iterate over all lines
    for lnum, line in ipairs(lines) do
      if line_contains_admitted(line) then
        -- Create a sign object
        local sign = {
          lnum = lnum - 1,                         -- Line numbers start at 0
          id = lnum,                               -- Id is the line number
          severity = vim.diagnostic.severity.INFO, -- Severity is INFO
          message = "Line contains `Admitted.`",   -- Message
        }
        -- Add the sign to the diagnostics table
        table.insert(diagnostics, sign)
      end
    end

    -- Pass the signs, including the ones we just added, to the original signs handler
    orig_signs_handler.show(ns, bufnr, diagnostics, opts)
  end,
}

-- Only for `coq` file
function CheckAdmitted()
  vim.cmd("set filetype=ocaml")
  vim.wait(1000)
  vim.cmd("set filetype=coq")
  vim.cmd("LspStop")
end

vim.keymap.set("n", "<leader>caa", "<cmd>lua CheckAdmitted()<cr>", { noremap = true, silent = true })
