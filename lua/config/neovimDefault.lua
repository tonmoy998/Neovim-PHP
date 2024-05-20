vim.cmd([[
  autocmd FileType html,css,javascript,php EmmetInstall
  autocmd FileType html,css,javascript,php imap ,, <C-y>, 
  let g:python3_host_prog = '/usr/bin/python3.10'
  let g:pydocstring_doq_path = '/usr/bin/pydoc3.10'
  
  
  let g:db_ui_winwidth = 30
  let g:db_ui_auto_execute_table_helpers = 1
  let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }

  let g:tagalong_filetypes = ['html' , 'php' , 'javascript', 'typescript']
  let g:chadtree_settings = {
    \ 'theme.icon_glyph_set'  : 'devicons' , 
    \ 'theme.text_colour_set'  :   "nord", 
  \}

set foldmethod=manual
]])
