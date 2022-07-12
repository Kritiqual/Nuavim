nnoremap <leader>c :ColorToggle<CR>
vnoremap <leader>c :ColorToggle<CR>
let g:colorizer_auto_color = 1
let g:colorizer_auto_filetype='vim,css,html,conf,config,lua'
let g:colorizer_skip_comments = 1
let g:colorizer_disable_bufleave = 1
let g:colorizer_syntax = 1
au BufNewFile,BufRead *.css,*.html,*.htm,*.vim  :ColorHighlight!