return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_view_method = "SumatraPDF"
    vim.g.vimtex_compiler_latexmk = {
      aux_dir = "./.latexmk/aux",
      out_dir = "./.latexmk/out",
    }
    -- Update SumatraPDF path
    vim.g.vimtex_view_general_viewer = "C:/Users/X039784/AppData/Local/SumatraPDF/SumatraPDF.exe"
    vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
    vim.g.vimtex_view_general_options_latexmk = "-reuse-instance"
  end,
}
