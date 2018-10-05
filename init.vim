set spell spelllang=en_us
set undofile
set encoding=utf-8

if has('clipboard')
  if has('unnamedplus')  " When possible use + register for copy-paste
    set clipboard=unnamed,unnamedplus
  else         " On mac and Windows, use * register for copy-paste
    set clipboard=unnamed
  endif
endif

set ignorecase
set number
set conceallevel=1
set termguicolors
set background=dark

set expandtab
set autoindent
set softtabstop=4
set shiftwidth=4
set tabstop=4

set history=1000

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

colorscheme solarized

filetype plugin indent on

set undodir=~/.config/nvim/undodir

call plug#begin()

Plug 'vim-scripts/Vimball'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'rust-lang/rust.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'groenewege/vim-less'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/nginx.vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'michaeljsmith/vim-indent-object'
Plug 'vim-syntastic/syntastic'
Plug 'Shougo/neocomplcache.vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'Raimondi/delimitMate'
Plug 'tmhedberg/SimpylFold'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/nginx.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim'

Plug 'davidhalter/jedi-vim', { 'for': ['python'] }
Plug 'Yggdroot/indentLine'
Plug 'lifepillar/vim-mucomplete'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'
Plug 'sheerun/vim-polyglot'

" Colors
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'romainl/Apprentice'

call plug#end()

let g:user_emmet_leader_key               ="<c-y>"
" let g:javascript_plugin_jsdoc           = 1
" let g:javascript_conceal_function       = "ƒ"
" let g:javascript_conceal_null           = "ø"
" let g:javascript_conceal_arrow_function = "⇒"
" let g:javascript_conceal_return         = "⇚"

let g:jsx_ext_required = 0

let g:syntastic_check_on_open=1

nnoremap <F3> :NERDTreeToggle<cr>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']

let g:ycm_autoclose_preview_window_after_completion=1

set foldmethod=indent
set foldlevel=99

au BufRead,BufNewFile *.nginx set ft=nginx
au BufRead,BufNewFile */etc/nginx/* set ft=nginx
au BufRead,BufNewFile */usr/local/nginx/conf/* set ft=nginx
au BufRead,BufNewFile nginx.conf set ft=nginx

set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing

" vsantana
"
set cul
set inccommand=split "preview de comandos
set list lcs=tab:\|\ "Exibir indentação com tabs
set spelllang=pt
let mapleader=" "

let mapleader="\<space>"
" let g:mucomplete#enable_auto_at_startup = 1
" let g:mucomplete#completion_delay = 5

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup ENDlet mapleader = ","

nnoremap <Leader>; :Files<cr>
nnoremap <S-F3> :Ag <c-r><c-w>
au BufRead,BufNewFile *.xml vnoremap <Leader>c <esc>a --><esc>'<i<!-- <esc>'>$
au BufRead,BufNewFile *.js vnoremap <Leader>c <esc>a */}<esc>'<i{/* <esc>'>$


"" JavaScript
au BufRead,BufNewFile *.js setlocal ts=4 sts=4 sw=4 noexpandtab foldmethod=syntax

"" vim-airline
let g:airline_theme = 'bubblegum'
" let g:airline_theme = 'light'
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif
