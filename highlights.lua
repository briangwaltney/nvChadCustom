-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
  NvimTreeGitDirty = { fg = "yellow" },
  NvimTreeRootFolder = {
    fg = "",
    bold = true,
  },
}

M.add = {
  -- baddd
  ["@spell"] = { fg = "#FF0000" },
}

return M
