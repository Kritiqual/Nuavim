"" Basic
set encoding=utf-8 bomb binary
set backspace=indent,eol,start tabstop=4 softtabstop=0 shiftwidth=4 expandtab
set hlsearch incsearch ignorecase smartcase
set nobackup noswapfile fileformats=unix,dos,mac showcmd

syntax on
colorscheme dracula
set ruler number termguicolors foldmethod=marker mouse=a
filetype plugin on
set clipboard+=unnamedplus


"" Autocmd
" Sync syntax from start
augroup nvim-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync fromstart
augroup END

" " Auto update and upgrade ?
" augroup nvim-auto-update
"    autocmd!
"    autocmd VimEnter * PlugUpgrade
"    autocmd VimEnter * PlugUpdate --sync
"    autocmd VimEnter * :q
"    autocmd VimEnter * CocUpdate
"    autocmd VimEnter * :q
" augroup END

" Toggle Color
augroup nvim-auto-color
    autocmd!
    autocmd VimEnter * silent :ColorToggle
augroup END

"" Abbreviation
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
