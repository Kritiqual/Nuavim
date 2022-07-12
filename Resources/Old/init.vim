for f in split(glob('$CFG/nvim/Sources/*.vim'), '\n')
   exe 'source' f
endfor
" Crease
let g:crease_foldtext = { 'default': '%=\\ %t (%l) //%=' }