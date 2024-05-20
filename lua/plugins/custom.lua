return {
  { "KabbAmine/vCoolor.vim" },
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "lambdalisue/suda.vim",
    init = function()
      vim.keymap.set("n", "<A-s>", "<cmd>SudaWrite<cr>", { desc = "SudaWrite" })
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function()
      local logo = [[

███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗
████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║
██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║
██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║
██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║
╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
]]

      logo = string.rep("\n", 2) .. logo .. "\n"

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          -- statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
          -- stylua: ignore
          center = {
            { action = "Telescope find_files", desc = " Find file", icon = " ", key = "f" },
            { action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
            { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
            { action = "Telescope live_grep", desc = " Find text", icon = " ", key = "g" },
            { action = "Telescope find_files cwd=~/.config/nvim", desc = "Config", icon = "  ", key = "c" },
            { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
            { action = "qa", desc = " Quit", icon = " ", key = "q" },

          },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- close Lazy and re-open when the dashboard is ready
      if vim.o.filetype == "lazy" then
        vim.cmd.close()
        vim.api.nvim_create_autocmd("User", {
          pattern = "DashboardLoaded",
          callback = function()
            require("lazy").show()
          end,
        })
      end

      return opts
    end,
  },
  { "christoomey/vim-tmux-navigator" },
  { "https://github.com/mbbill/undotree" },
  {
    "rockyzhang24/arctic.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    name = "arctic",
    branch = "main",
    priority = 1000,
  },
  {
    "https://github.com/xiyaowong/transparent.nvim",
    enable = true,
    lazy = false,
    config = function()
      require("transparent").setup({ -- Optional, you don't have to run setup.
        groups = { -- table: default groups
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
        },
        extra_groups = {
          "NormalFloat",
          "CocFloating",
          "TelescopeNormal",
          "NvimTreeNormal",
        }, -- table: additional groups that should be cleared
        exclude_groups = {}, -- table: groups you don't want to clear
      })
      require("transparent").clear_prefix("lualine")
      require("transparent").clear_prefix("BufferLine")
      require("transparent").clear_prefix("NeoTree")
    end,
  },
  {
    "2kabhishek/nerdy.nvim",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = "Nerdy",
  },
  { "voldikss/vim-floaterm" },
  { "folke/neodev.nvim", opts = {} },
  { "mattn/emmet-vim", ft = { "html", "javascript", "php" } },
  { "rcarriga/nvim-notify" },
  { "https://github.com/mg979/vim-visual-multi", branch = "master" },
  { "https://github.com/AndrewRadev/tagalong.vim" },
  { "ms-jpq/chadtree", branch = "chad", build = "python3 -m chadtree deps" },
  {
    "google/executor.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      -- your setup here
      require("executor").setup({})
    end,
  },
}
