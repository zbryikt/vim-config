execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme golden
set expandtab
autocmd BufNewFile,BufReadPost *.styl set filetype=stylus
autocmd BufNewFile,BufReadPost *.ngx set filetype=nginx
set cursorcolumn
hi cursorcolumn cterm=none ctermbg=233
set cm=blowfish2
set sw=2
" note: set paste reset expandtab.
" just remember to use 'set paste expandtab' if we still need editing
set expandtab
set directory=$HOME/.vim/swapfiles//
set laststatus=2
set statusline=%F
" without `backupcopy=yes`, vim move files which sometimes
" trigger `unlink` event under a srcbuild monitored folder.
set backupcopy=yes
hi StatusLine ctermbg=235 ctermfg=243
" conceallevel prevent vim from hiding quote in json
let g:indentLine_setConceal = 0
" make it be able to delete:
" 1. incorrect indent. 2. EOL Char. 3. before " inserting start point.
set backspace=indent,eol,start
let g:copilot_enabled=0
" vim91 markdown default indent = 4. overwrite it.
autocmd FileType markdown setlocal shiftwidth=2
