set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Nerdtree
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>


" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256


" Code folding
set foldmethod=indent
set foldlevel=0
" Enable folding with the spacebar instead of za
nnoremap <space> za
Plugin 'tmhedberg/SimpylFold'
" Display docstring preview for folded code
let g:SimpylFold_docstring_preview=1


" Indentation
" Indentation for python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
" Indentation for html, css, jasvascript
au BufNewFile,BufRead *.js; *.html; *.css;
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
Plugin 'vim-scripts/indentpython.vim'


" Flag bad white spaces
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" Install You Complete Me YCM
Plugin 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" Syntax Syntax Checking/Highlighting
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on


" Color Schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'crusoexia/vim-monokai'
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  "colorscheme zenburn
  colorscheme monokai
endif


" General Config
set encoding=utf-8
set nu
set clipboard=unnamed
