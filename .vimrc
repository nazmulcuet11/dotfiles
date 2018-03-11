" Vundle {{{
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

" --------- My plug-ins ---------
" Nerdtree
Plugin 'scrooloose/nerdtree'

" Nerdcommenter
Plugin 'scrooloose/nerdcommenter'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Code folding
Plugin 'tmhedberg/SimpylFold'

" Python indentation
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
Plugin 'git@github.com:jiangmiao/auto-pairs.git'

" super tab"
Plugin 'ervandew/supertab'

" Vim-Gitgutter
Plugin 'airblade/vim-gitgutter'

"Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'
" --------- My plug-ins ---------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" --------------------------- }}}


" General Config {{{
let mapleader = ","

set encoding=utf-8 " Use an encoding that supports uni-code
set number " Show line number
set clipboard=unnamedplus
set cursorline " Highlight cursor line
set wildmenu " Visual autocomplete for command menu
set fileformat=unix
set textwidth=79

set colorcolumn=110 " highlight column number 110
" set background color for ColorColumn
highlight ColorColumn ctermbg=darkgray

" Show whitespace
set list
set showbreak=↪\
set listchars=tab:»\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" Highlight bad white spaces
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Set special key (tab, nbsp, space and trails) colors
highlight SpecialKey ctermfg=8a8a8a guifg=8a8a8a

" Remove Trailing Whitespce on save
autocmd BufWritePre * :%s/\s\+$//e

" Map - to move line downwords
nnoremap - ddp
" Map + to move line upwards
nnoremap + ddkP

" map ctrl-d to delete lines in insert mode
inoremap <c-d> <esc>ddi

" map jk to esc
inoremap jk <esc>

" enable mouse
set mouse=a

" source vimrc file if found in current working directory
set exrc
" restrict usage of some potentially harmful command in non-default vimrc
set secure
" }}}


" Code Folding {{{
set foldenable " Enable folding
set foldlevelstart=10 " Open most folds by default
set foldnestmax=10 " Maximum 10 nested folds
set foldmethod=indent " Fold based on indent level

" Enable folding with the spacebar instead of za
nnoremap <space> za

" Display docstring preview for folded code
let g:SimpylFold_docstring_preview=1
" }}}


" Indentation {{{
set tabstop=4 " Use four visual spaces as a tab
set softtabstop=4 " Use four spaces as tab when editing
set shiftwidth=4 " When shifting indent using four spaces
set expandtab " Use tabs as spaces
set autoindent " New line inherits indentation from previous line
" }}}


" Syntax Highlighting {{{
syntax on
let python_highlight_all=1 " Syntax highlight for python
" }}}


" Search {{{
set incsearch " Incremental search to show partial matches
set hlsearch " Enable Search Highlighting
set smartcase " Automatically switch search to case-sensitive when search query contains an uppercase letter
" Cancel a search using escape
" nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
" }}}


" Nerdtree {{{
map <C-n> :NERDTreeToggle<CR>
" }}}


" Powerline {{{
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
" }}}


" You Complete Me {{{
let g:ycm_complete_in_comments_and_strings=1
" Load ycm conf by default
let g:ycm_confirm_extra_conf=0
" Turn on tag completion
let g:ycm_collect_identifiers_from_tags_files=1
" Only show completion as a list instead of a sub-window
" set completeopt-=preview
" Start completion from the first character
let g:ycm_min_num_of_chars_for_completion=1
" Don't cache completion items
" let g:ycm_cache_omnifunc=0
" Complete syntax keywords
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" This assumes your kernel directory has the word 'kernel'
if getcwd() =~ "kernel"
    let g:ycm_global_ycm_extra_conf='~/ycm_extra_conf_kernel.py'
else
	" let g:ycm_global_ycm_extra_conf = '~/ycm_global_extra_conf.py'
	let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
endif
" }}}


" Super tab {{{
" let g:SuperTabDefaultCompletionType = "<c-n>"
" }}}


" Color Schemes {{{
if has('gui_running')
  " set background=dark
  set background=light
  colorscheme solarized
else
  colorscheme zenburn
  "colorschem:e monokai
  set background=dark
  "set background=light
  " colorscheme solarized
endif
" }}}


" The following is a special modeline comment, do not delete this
" vim:foldmethod=marker:foldlevel=0
