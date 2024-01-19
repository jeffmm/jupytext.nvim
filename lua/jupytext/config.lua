local M = {}
local defaults = {
  style = "hydrogen",
  output_extension = "auto",
  force_ft = nil,
  custom_language_formatting = {},
  jupytext_path = "jupytext",
}
M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
  return M
end

M.setup()

return M
