set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" -------- my plug-ins ------------
" Nerdtree
Plugin 'scrooloose/nerdtree'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Code folding
Plugin 'tmhedberg/SimpylFold'

" Python indentaion
Plugin 'vim-scripts/indentpython.vim'

" Code Completion
Plugin 'Valloric/YouCompleteMe'

" Syntax Highlighting 
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" Color Scheme
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'crusoexia/vim-monokai'

" Bracket Completion
Plugin 'git://github.com/jiangmiao/auto-pairs.git'
" -------- my plug-ins ------------


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Nerdtree
map <C-n> :NERDTreeToggle<CR>


" Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256


" Code folding
set foldmethod=indent
set foldlevel=10
" Enable folding with the spacebar instead of za
nnoremap <space> za
" Display docstring preview for folded code
let g:SimpylFold_docstring_preview=1


" Indentation
" Indentation for python
" au BufNewFile,BufRead *.py
"     \ set tabstop=4 |
"     \ set softtabstop=4 |
"     \ set shiftwidth=4 |
"     \ set textwidth=79 |
"     \ set expandtab |
"     \ set autoindent |
"     \ set fileformat=unix |
" Indentation for html, css, jasvascript
" au BufNewFile,BufRead *.js; *.html; *.css;
"     \ set tabstop=2 |
"     \ set softtabstop=2 |
"     \ set shiftwidth=2 |


" Flag bad white spaces
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" Complete Me
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" Syntax Syntax Checking/Highlighting
let python_highlight_all=1
syntax on


" Color Schemes
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  "colorscheme zenburn
  colorscheme monokai
endif


" General Config
set encoding=utf-8
set number
set clipboard=unnamed
set cursorline " Highlight cursor line
set wildmenu " visual autocomplete for command menu
" Indentation 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set fileformat=unix
set textwidth=79
" highlight column number 110
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
" Show whitespace
set list
set showbreak=↪\ 
set listchars=tab:»\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
" Set special key (tab, nbsp, space and trails) colors 
highlight SpecialKey ctermfg=8a8a8a guifg=8a8a8a
