"" Vim Airline
let g:airline_theme = 'dracula'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_inactive_collapse=1
let g:airline_inactive_alt_sep=1
let g:airline_skip_empty_sections=1
let g:airline_hightlighting_cache=1
let g:airline_stl_path_style = 'unique_tail'
let g:airline_section_c_only_filename = 1

let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'

" Customize mode indicator
let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'CMD',
    \ 'i'      : 'INS',
    \ 'ic'     : 'INS',
    \ 'ix'     : 'INS',
    \ 'multi'  : 'MLT',
    \ 'n'      : 'NOR',
    \ 'ni'     : 'NOR',
    \ 'no'     : 'NOR',
    \ 'R'      : 'RPL',
    \ 'Rv'     : 'RPL',
    \ 's'      : 'SUB',
    \ 'S'      : 'SUB',
    \ ''     : 'SUB',
    \ 't'      : 'TER',
    \ 'v'      : 'VIS',
    \ 'V'      : 'VIS',
    \ ''     : 'VIS',
    \ }

" Customize powerline and bufferline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' L:' " ' ' ' ☰'
let g:airline_symbols.maxlinenr = ' ' " '☰ '
let g:airline_symbols.colnr = ' C:' " '' 
let g:airline_symbols.branch = ''
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.paste     = '∥' "'ρ' 'Þ'
let g:airline_symbols.whitespace = '' " 'Ξ'

let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
let g:airline#extensions#branch#empty_message = ''

let g:airline#extensions#coc#enabled = 1 
let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

let g:airline#extensions#readonly#symbol   ='⊘'
let g:airline#extensions#linecolumn#prefix = '¶'
let g:airline#extensions#paste#symbol      = 'ρ'
