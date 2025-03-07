local M = {}

M.run_jupytext_command = function(jupytext_path, input_file, options)
  local cmd = jupytext_path .. " " .. input_file .. " "
  for option_name, option_value in pairs(options) do
    if option_value ~= "" then
      cmd = cmd .. option_name .. "=" .. option_value .. " "
    else
      -- empty string value implies this options is just a flag
      cmd = cmd .. option_name .. " "
    end
  end

  local output = vim.fn.system(cmd)

  if vim.v.shell_error ~= 0 then
    print(output)
    vim.api.nvim_err_writeln(cmd .. ": " .. vim.v.shell_error)
    return
  end
end

return M
