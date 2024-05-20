local telescope = require("telescope")
local action = require("telescope.actions")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader><SPACE>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

telescope.setup({
  defaults = {
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "   ",
    path_display = { "truncate" },
    file_ignore_patterns = {
      "dist",
      "target",
      "node_modules",
      "pack/plugins",
    },

    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "bottom",
        preview_width = 0.55,
        results_width = 0.8,
        preview_cutoff = 0,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    -- prompt_prefix = "λ -> ",
    winblend = 0,
    border = {},
    borderchars = {
      prompt = { "━", "┃", "━", "┃", "┏", "┓", "┛", "┗" },
      -- preview = {"━", "┃", "━", "┃", "┏", "┓", "┛", "┗"},
      -- results = {"━", "┃", "━", "┃", "┏", "┓", "┛", "┗"},
      -- prompt = {" ", " ", " ", " ", " ", " ", " ", " "},
      preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
      results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
    },
  },

  pickers = {
    colorscheme = {
      enable_preview = true,
    },
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
    recent_files = {
      only_cwd = true,
    },
  },
})

-- telescope.load_extension('ui-select')

local normal_hl = vim.api.nvim_get_hl_by_name("Normal", true)

local purple1 = "#333352"
local purple2 = "#232338"
local purple3 = "#12121c"
local red1 = "#ba3648"
local green1 = "#37ad39"
local blue1 = "#0985de"

----------------------------------------------------------------------
--                              Prompt                              --
----------------------------------------------------------------------
-- vim.api.nvim_set_hl(0, 'TelescopePromptBorder', {
--   fg = purple3,
--   bg = purple3,
-- })

-- vim.api.nvim_set_hl(0, 'TelescopePromptNormal', {
--   fg = normal_hl.foreground,
--   bg = purple3,
-- })

vim.api.nvim_set_hl(0, "TelescopePromptTitle", {
  fg = normal_hl.foreground,
  bg = red1,
})

vim.api.nvim_set_hl(0, "TelescopePromptCounter", {
  fg = red1,
  bg = purple3,
})

-- vim.api.nvim_set_hl(0, 'TelescopePromptPrefix', {
--   fg = red1,
--   bg = purple3,
-- })
--
----------------------------------------------------------------------
--                              Result                              --
----------------------------------------------------------------------
-- vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', {
--   fg = purple2,
--   bg = purple2,
-- })

-- vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', {
--   fg = normal_hl.foreground,
--   bg = purple2,
-- })
--
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {
  fg = normal_hl.foreground,
  bg = blue1,
})

vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", {
  fg = blue1,
  bg = vim.api.nvim_get_hl_by_name("TelescopeSelection", true).background,
})
--
-- ----------------------------------------------------------------------
-- --                             Preview                              --
-- ----------------------------------------------------------------------
--
-- vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', {
--   fg = purple1,
--   bg = purple1,
-- })
--
-- vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', {
--   fg = normal_hl.foreground,
--   bg = purple1,
-- })
--
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {
  fg = normal_hl.foreground,
  bg = green1,
})
-- require("telescope").load_extension("fzf")
-- require("telescope").load_extension("media")
require("telescope").load_extension("nerdy")
