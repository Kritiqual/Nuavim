let g:floaterm_width=0.45
let g:floaterm_height=0.45
let g:floaterm_title='$1/$2'
let g:floaterm_position='topright'
"let g:floaterm_borderchars='⇒⇓⇐⇑⇖⇗⇘⇙' "(border-corner) top - right - left - down
nnoremap <silent> <F10>   :FloatermPrev<CR>
tnoremap <silent> <F10>   <C-\><C-n>:FloatermPrev<CR>
nnoremap <silent> <F11>   :FloatermNew<CR>
tnoremap <silent> <F11>   <C-\><C-n>:FloatermNew<CR>
nnoremap <silent> <F12>   :FloatermNext<CR>
tnoremap <silent> <F12>   <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <C-k>  :FloatermKill<CR>
tnoremap <silent> <C-k>  <C-\><C-n>:FloatermKill<CR>
nnoremap <silent> <C-k><C-k>  :FloatermKill!<CR>
tnoremap <silent> <C-k><C-k>  <C-\><C-n>:FloatermKill!<CR>
nnoremap <silent> <leader><F11>  :FloatermToggle<CR>
tnoremap <silent> <leader><F11>  <C-\><C-n>:FloatermToggle<CR>
"     <F10>   <F11>   <F12>
"     Prev     New     Next
" <\>          Toggle