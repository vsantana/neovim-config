set undofile
set encoding=utf-8


call plug#begin()

Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'vim-scripts/Vimball'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'  "A light and configurable statusline/tabline plugin for Vim
Plug 'junegunn/goyo.vim' " Distraction-free writing in Vim.
" Plug 'rust-lang/rust.vim'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'groenewege/vim-less'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/nginx.vim'
"  Plug 'Valloric/YouCompleteMe'
Plug 'michaeljsmith/vim-indent-object' " Usar no modo visual aI selectionar objeto
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
Plug 'junegunn/gv.vim'
" Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter' " Mostra que linhas foram mudadas no git
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'Raimondi/delimitMate' "Fechar {} e []
Plug 'tmhedberg/SimpylFold' "Fold para python
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'mhinz/vim-startify'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi' "Completation para TypeScript
Plug 'Shougo/vimproc.vim' "a great asynchronous execution library for Vim
Plug 'tmsvg/pear-tree' " Completar pares []

Plug 'davidhalter/jedi-vim', { 'for': ['python'] }
Plug 'Yggdroot/indentLine' "mostrar guias de identacao
" Plug 'lifepillar/vim-mucomplete'
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
Plug 'https://github.com/Alok/notational-fzf-vim'
Plug 'mrtazz/simplenote.vim'
Plug 'qpkorr/vim-bufkill'
" Plug 'SirVer/ultisnips'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'fedorenchik/VimCalc3'
Plug 'chrisbra/matchit'

" Plug 'tpope/vim-vinegar' " Navegar pelos arquivos
Plug 'wincent/terminus' " Integracao com terminal
" Colors
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'romainl/Apprentice'
Plug 'joshdick/onedark.vim'

call plug#end()

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



let g:ale_completion_enabled = 0
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '~'

filetype plugin indent on
set undodir=~/.config/nvim/undodir

" Snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" Notational
let g:nv_search_paths = ['~/Dropbox/documentos/markdow']
let g:user_emmet_leader_key             =','
" let g:javascript_plugin_jsdoc           = 1
" let g:javascript_conceal_function       = "ƒ"
" let g:javascript_conceal_null           = "ø"
" let g:javascript_conceal_arrow_function = "⇒"
" let g:javascript_conceal_return         = "⇚"

let g:jsx_ext_required = 0

colorscheme papercolor

 "For mucomplete
set completeopt+=menuone


nnoremap <F3> :NERDTreeToggle<cr>
nnoremap <F15> :Ag 

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
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup ENDlet mapleader = ","

autocmd BufRead *.tsv setlocal ts=20 sts=20 sw=20 noexpandtab

" MAPS
nnoremap <Leader>; :Files<cr>
nmap <c-f> :Ag <c-r><c-w>

let g:SimplenoteUsername = $SIMPLENOTE_USER
let g:SimplenotePassword = $SIMPLENOTE_PWD


"" JavaScript
au BufRead,BufNewFile *.js setlocal ts=2 sts=2 sw=2 expandtab foldmethod=syntax

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}

" Formato do cursor
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"


"" vim-airline
let g:airline_theme = 'bubblegum'
" let g:airline_theme = 'light'
let g:airline_theme = 'papercolor'
let g:airline_powerline_fonts = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1


" Dev-icons
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

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
