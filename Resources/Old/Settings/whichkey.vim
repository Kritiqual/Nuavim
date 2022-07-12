" " Map leader to which_key
nnoremap <silent> <Space> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <Space> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
let g:which_key_sep = '→'
set timeoutlen=100
let g:which_key_map =  {}


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
let g:which_key_map['<F2>'] = [ ':NERDTreeToggle'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]

" s is for search
let g:which_key_map.s = {
  \ 'name' : '+search' ,
  \ '/' : [':History/'     , 'history'],
  \ ';' : [':Commands'     , 'commands'],
  \ 'a' : [':Ag'           , 'text Ag'],
  \ 'b' : [':BLines'       , 'current buffer'],
  \ 'B' : [':Buffers'      , 'open buffers'],
  \ 'c' : [':Commits'      , 'commits'],
  \ 'C' : [':BCommits'     , 'buffer commits'],
  \ 'f' : [':Files'        , 'files'],
  \ 'g' : [':GFiles'       , 'git files'],
  \ 'G' : [':GFiles?'      , 'modified git files'],
  \ 'h' : [':History'      , 'file history'],
  \ 'H' : [':History:'     , 'command history'],
  \ 'l' : [':Lines'        , 'lines'] ,
  \ 'm' : [':Marks'        , 'marks'] ,
  \ 'M' : [':Maps'         , 'normal maps'] ,
  \ 'p' : [':Helptags'     , 'help tags'] ,
  \ 'P' : [':Tags'         , 'project tags'],
  \ 's' : [':Snippets'     , 'snippets'],
  \ 'S' : [':Colors'       , 'color schemes'],
  \ 't' : [':Rg'           , 'text Rg'],
  \ 'T' : [':BTags'        , 'buffer tags'],
  \ 'w' : [':Windows'      , 'search windows'],
  \ 'y' : [':Filetypes'    , 'file types'],
  \ 'z' : [':FZF'          , 'FZF'],
\ }
    
let g:which_key_map.t = {
  \ 'name' : '+Float term',
  \ 'n' : [':FloatermNew' , 'New Floaterm'],
  \ 'kk' : [':FloatermKill' , 'Floaterm Kill']
\}

let g:which_key_map.b = {
  \ 'name' : '+Buffer',
  \ 'a' : [':bn' , 'Next Buffer'],
  \ 'd' : [':bp' , 'Prev Buffer'],
  \ 'w' : [':bd' , 'Kill Buffer']
\}

function s:updateall()
   autocmd VimEnter * PlugUpgrade
   autocmd VimEnter * PlugUpdate --sync
   autocmd VimEnter * :q
endfunction

let g:which_key_map.u = {
  \ 'name' : '+Update',
  \ 'a' : [':call s:updateall()' , 'Update All'],
  \ 'v' : [':PlugUpgrade' , 'Update Vim-plug'],
  \ 'p' : [':PlugUpdate', 'Update Plugins']
\}

" Register which key map
call which_key#register('<Space>', "g:which_key_map")