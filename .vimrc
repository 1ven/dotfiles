set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'mxw/vim-jsx'
" Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'elzr/vim-json'
" Plugin 'scrooloose/syntastic'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'roaiven/vim-hybrid'
Plugin 'othree/yajs.vim'
Plugin 'tpope/vim-fugitive'
Plugin '1ven/yats.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

call vundle#end()
" filetype plugin indent on

" Base settings
let mapleader = ','
set background=dark
colorscheme hybrid
syntax on
set number
set listchars=eol:¬,tab:--,trail:·,extends:>,precedes:<
set list
set expandtab
set showcmd
set scrolloff=3
set nobackup
set noswapfile

" Tabs
set softtabstop=2
set tabstop=2
set shiftwidth=2

" Searching
set hlsearch
set incsearch
set noignorecase
set smartcase

" Emmet
" let g:user_emmet_install_global = 0
" autocmd FileType html EmmetInstall
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" NERDTree
"map <F9> :NERDTreeToggle ~/Documents/Files/work/projects<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
nmap <C-\> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.DS_Store$']

" JSX
let g:jsx_ext_required = 0

" Auto brackets closing
" ino ( ()<left>
" ino { {}<left>
" ino [ []<left>
" ino < <><left>

" ctrlp
let g:ctrlp_custom_ignore = 'build\|dist\|dest\|gulp\|bower_components\|node_modules\|DS_Store\|png\|jpg'

" Sensible settings
set laststatus=2
set ruler
set wildmenu

set ttimeout
set ttimeoutlen=100

set autoindent
set backspace=indent,eol,start
set complete-=i
"set smarttab

" Airline
let g:airline_theme='zenburn'
" let g:airline_powerline_fonts = 1

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Braces highlight color
hi MatchParen cterm=underline ctermbg=none ctermfg=231

" Search highlight
hi Search cterm=underline ctermfg=none ctermbg=none

" Syntastic
let g:syntastic_javascript_checkers = ['eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


" Allow to copy/paste between VIM instances
" "copy the current visual selection to ~/.vbuf
vmap <Leader>y :w! ~/.vbuf<CR>
" "copy the current line to the buffer file if no visual selection
nmap <Leader>y :.w! ~/.vbuf<CR>
" "paste the contents of the buffer file
nmap <Leader>p :r ~/.vbuf<CR>
