-- ~/.config/nvim/lua/plugins/disable_sqlfluff.lua
return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      -- Ensure the linters_by_ft table exists
      opts.linters_by_ft = opts.linters_by_ft or {}
      -- Disable all linters for SQL-related filetypes:
      opts.linters_by_ft.sql = {} -- for .sql files
      opts.linters_by_ft.mysql = {} -- for MySQL SQL files (if used)
      opts.linters_by_ft.plsql = {} -- for PL/SQL files (Oracle)
      -- Add other filetypes if needed (e.g., opts.linters_by_ft.postgres = {}).
    end,
  },
}
