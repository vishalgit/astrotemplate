-- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects", -- Ensure textobjects are installed
  },
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "norg"
      -- Add more languages if needed
    },
    textobjects = { -- Enable textobjects module
      select = {
        enable = true,
        lookahead = true, -- Automatically jump to textobject
        keymaps = {
          ["af"] = "@function.outer", -- Around function
          ["if"] = "@function.inner", -- Inside function
          ["ac"] = "@class.outer", -- Around class
          ["ic"] = "@class.inner", -- Inside class
        },
      },
      move = {
        enable = true,
        set_jumps = true, -- Jump in jumplist
        goto_next_start = {
          ["]m"] = "@function.outer",
          ["]c"] = "@class.outer",
        },
        goto_previous_start = {
          ["[m"] = "@function.outer",
          ["[c"] = "@class.outer",
        },
      },
    },
  },
}
