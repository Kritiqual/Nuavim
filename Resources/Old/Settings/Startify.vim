let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:startify_custom_header = startify#center([ 
        \ '███╗   ██╗██╗   ██╗██╗███╗   ███╗',
        \ '████╗  ██║██║   ██║██║████╗ ████║',
        \ '██╔██╗ ██║██║   ██║██║██╔████╔██║',
        \ '██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
        \ '██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
        \ '╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
        \])

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'c': '$CFG/awesome/rc.lua' },
            \ { 'i': '$CFG/nvim/init.vim' },
            \ { 'b': '~/.bashrc' },
            \ { 'bg': '$LX/.bashrc' }
            \ ]
