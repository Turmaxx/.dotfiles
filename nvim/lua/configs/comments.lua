require('nvim_comment').setup({
   marker_padding = true,                     -- Linters prefer comment and line to have a space in between markers
   comment_empty = true,                      -- should comment out empty or whitespace only lines
   comment_empty_trim_whitespace = true,      -- trim empty comment whitespace
   create_mappings = true,                    -- Should key mappings be created
   operator_mapping = "<leader>g",            -- Visual/Operator mapping left hand side
   hook = nil                                 -- Hook function to call before commenting takes place
})