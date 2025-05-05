return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    -- Ensure the global connection table exists
    vim.g.dbs = {
      {
        name = "nissan",
        url = "sqlserver://nissan_reader:006wGyx0JQ@db-us-replica-ex.nissan.tecsys.cloud/elite_prod_98x_w",
      },
    }
  end,
}
