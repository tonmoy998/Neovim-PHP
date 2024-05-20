local actions = require("telescope.actions")
local finders = require("telescope.finders")
local pickers = require("telescope.pickers")
local previewers = require("telescope.previewers")

-- Custom previewer using 'cat' to display file contents
local cat_previewer = previewers.new_termopen_previewer({
  get_command = function(entry)
    -- Use 'cat' command to display file contents
    return { "cat", entry.path }
  end,
})

-- Function to display all files and preview their contents
local function show_files()
  pickers
    .new({
      prompt_title = "All Files",
      finder = finders.new_oneshot_job({ "fd", { ".", "-t", "f" } }), -- Use 'fd' to list all files recursively
      sorter = require("telescope.config").values.generic_sorter({}),
      previewer = cat_previewer,
    })
    :find()
end

-- Call the show_files function to display the file picker
show_files()
