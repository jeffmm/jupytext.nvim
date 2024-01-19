local M = {}

M.check = function()
  local config = require "jupytext.config"
  vim.health.report_start "jupytext.nvim"
  vim.fn.system("which " .. vim.shellescape(config.jupytext_path))

  if vim.v.shell_error == 0 then
    vim.health.report_ok "Jupytext is available"
  else
    vim.health.report_error("Jupytext is not available", "Install jupytext via `pip install jupytext`")
  end
end

return M
