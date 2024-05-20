-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd([[

augroup code_exec
autocmd!
autocmd FileType php nnoremap <buffer> <leader>r :!nohup sudo php -S localhost:8080 > /dev/null 2>&1 &<CR>
autocmd FileType php,html nnoremap <buffer> <leader>q :AsyncRun -mode=term -pos=hide -name=stopserver -post=echo\ g:asyncrun_name sudo stopphpserver<CR>
autocmd FileType html,php nnoremap <buffer> <A-r> :!nohup npm run compile:sass > /dev/null 2>&1 &<CR>


autocmd FileType python nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 python3 % <CR>
autocmd FileType javascript nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 nodejs % <CR>
autocmd FileType bash,sh nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 bash % <CR>
autocmd FileType lua nnoremap <buffer> <leader>r :FloatermNew --autoclose=0 lua % <CR>
autocmd FileType lua nnoremap <buffer> <leader>l :FloatermNew --autoclose=0 love .<CR>
" autocmd FileType html,css,javascript nnoremap <buffer> <leader>r :!nohup live-server > /dev/null 2>&1 &<CR>
autocmd FileType html,css,javascript nnoremap <buffer> <leader>r :term live-server<CR>


autocmd FileType php nnoremap <buffer> <F5> :FloatermNew --autoclose=0 php % <CR>
autocmd FileType python nnoremap <buffer> <F5> :FloatermNew --autoclose=0 python3 % <CR>
autocmd FileType javascript nnoremap <buffer> <F5> :FloatermNew --autoclose=0 nodejs % <CR>
autocmd FileType lua nnoremap <buffer> <F5> :FloatermNew --autoclose=0 lua % <CR>

augroup END
]])
