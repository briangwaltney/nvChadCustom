---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    -- Disable
    ["<leader>n"] = { "" },
  },
}

M.general = {
  n = {
    ["<leader>dl"] = {
      "<cmd> Telescope diagnostics <CR>",
      "diagnostics list",
    },

    ["<c-Y>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

    ["<Esc>"] = { ":noh<CR>", "clear highlights" },
    ["<leader>s"] = { ":lua vim.lsp.buf.format()<CR>:w<CR>", "save" },

    ["{"] = { "<C-u>zz", "half page up" },
    ["}"] = { "<C-d>zz", "half page down" },
    ["U"] = { "<C-r>", "undo" },
    ["n"] = { "nzzzv", "find next and center" },
    ["N"] = { "Nzzzv", "find next and center" },
    ["gc"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "toggle comment",
    },

    ["L"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["H"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

    ["<leader>ch"] = { "<cmd> Telescope keymaps <CR>", "Keymap search" },

    -- Harpoon
    ["<leader>9"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "add harpoon",
    },
    ["<leader>0"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "harpoon menu",
    },
    ["<leader>1"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "harpoon file 1",
    },
    ["<leader>2"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "harpoon file 2",
    },
    ["<leader>3"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "harpoon file 3",
    },
    ["<leader>5"] = {
      function()
        require("harpoon.ui").nav_file(5)
      end,
      "harpoon file 5",
    },
  },
  v = {
    ["gc"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "toggle comment",
    },
  },

  i = {
    ["<C-f>"] = {
      function()
        local cmp = require "cmp"
        if cmp.visible() then
          cmp.close()
        else
          cmp.complete()
        end
      end,
    },
    ["<Up>"] = {
      function()
        local cmp = require "cmp"
        if cmp.visible() then
          cmp.select_prev_item()
        end
      end,
      "Cycle autocomplete",
    },
    ["<Down>"] = {
      function()
        local cmp = require "cmp"
        if cmp.visible() then
          cmp.select_next_item()
        end
      end,
      "Cycle autocomplete",
    },

    ["<C-Y>"] = {
      function()
        local cmp = require "cmp"
        if cmp.visible() then
          cmp.select_prev_item()
        end
      end,
      "testing",
    },
  },
}

-- more keybinds!

return M
