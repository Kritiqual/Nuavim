let vimplug_exists=expand('$CFG/nvim/autoload/plug.vim')
" let g:vim_bootstrap_langs = "javascript,php,python,ruby"
" let g:vim_bootstrap_editor = "nvim"				

if !filereadable(vimplug_exists)
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo /home/kritiqual/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"
  autocmd VimEnter * PlugInstall
endif

call plug#begin('/home/kritiqual/Github/Linux/.config/nvim/autoload/plugged')
" CLIENT
  Plug 'Dracula/vim'

  Plug 'mhinz/vim-startify'

  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-fugitive'

  Plug 'voldikss/vim-floaterm'

  Plug 'puremourning/vimspector'
  
  Plug 'xolox/vim-session'

  Plug 'liuchengxu/vim-which-key'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'


" FILE MANAGER
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}


" INTELLISENSE
  Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Syntax
  Plug 'chrisbra/colorizer'

  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'jackguo380/vim-lsp-cxx-highlight'

  Plug 'scr1pt0r/crease.vim'

  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  Plug 'preservim/nerdcommenter'
call plug#end()

for f in split(glob('$CFG/nvim/Settings/*.vim'), '\n')
   exe 'source' f
endfor

let g:coc_global_extensions = [
\ 'coc-marketplace',
\ 'coc-explorer',
\ 'coc-pairs',
\ 'coc-json', 
\ 'coc-tsserver',
\ 'coc-pyright'
\]