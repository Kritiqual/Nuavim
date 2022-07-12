let mapleader=""
map <F1> <nop>
nnoremap <F1> :source /home/kritiqual/Github/Linux/.config/nvim/init.vim<CR>
nnoremap <leader><S-s> :source %<CR>
map q <nop>
xnoremap <A-Up> :move '<-2<CR>gv-gv
xnoremap <A-Down> :move '>+1<CR>gv-gv
" nnoremap <silent> <Up>    :resize -2<CR>
" nnoremap <silent> <Down>  :resize +2<CR>
" nnoremap <silent> <Left>  :vertical resize -2<CR>
" nnoremap <silent> <Right> :vertical resize +2<CR>

" Split
noremap <silent> <Leader>h :<C-u>split<CR>
noremap <silent> <Leader>v :<C-u>vsplit<CR>
map <silent> <C-j> <C-W>j
map <silent> <C-k> <C-W>k
map <silent> <C-h> <C-W>h
map <silent> <C-l> <C-W>l


" Buffer
nnoremap <silent> <leader>bd :bn<CR>
nnoremap <silent> <leader>ba :bp<CR>
nnoremap <silent> <leader>bw :bd<CR>

" Coc Marketplace
nnoremap <silent> <leader>mk :CocList marketplace<CR>