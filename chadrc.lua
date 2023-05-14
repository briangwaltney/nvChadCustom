---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "nord",
  theme_toggle = { "nord", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  changed_themes = {
    nord = {
      base_16 = {
        base00 = "#252a34",
        -- base01 = "#3B4252",
        -- base02 = "#434C5E",
        -- base03 = "#4C566A",
        -- base04 = "#D8DEE9",
        -- base05 = "#E5E9F0",
        -- base06 = "#ECEFF4",
        -- base07 = "#8FBCBB",
        -- base08 = "#88C0D0",
        base09 = "#fca5a5",
        -- base0A = "#88C0D0",
        base0B = "#d9f99d",
        -- base0C = "#81A1C1",
        base0D = "#38bdf8",
        base0E = "#fdba74",
        base0F = "#fca5a5",
      },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
