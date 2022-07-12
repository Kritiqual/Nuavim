nnoremap <silent> <leader><ENTER> :Goyo<CR>
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set nonumber
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set number
  set scrolloff=5
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()