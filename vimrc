""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Telmen Baldansuren
" Maintainer: 
"   https://www.github.com/mntelmen
"
" Version:
"   1.0 - 23/11/14
"
" Sections:
"   -> General
"   -> VIM user interface
"   -> Colors and Fonts
"   -> Files and Backups
"   -> Text, tab and indent related
"   -> Visual mode related
"   -> Moving around, tabs and buffers
"   -> Status line
"   -> Editing mappings
"   -> vimgrep searching and cope displaying
"   -> Spell checking
"   -> Misc
"   -> Helper functions
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable Pathogen Bundle
execute pathogen#infect()

" Sets how many lines of history VIM has to remember
set history=700


" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader  it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader> w :w!<cr>

" Highlight cursorline
"set cursorline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show current position
set ruler

" Height of the command bar
"set cmdheight=0

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
"set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about case
set smartcase

" Highlight search results
set hlsearch

" Makes searct act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
" set t_vb=
set tm=500

"
set number
set numberwidth=5

" Airline plugin enable
"let g:airline#extensions#tabline#enabled = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme smyck
"set background=dark
set t_Co=256

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions+=e
  set t_Co=256
  set guitablabel=%M\ $t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent realted
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

"Linebreak on 500 characters
set lbr
set tw=500

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super usefull From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
"map j gj
"map k gk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show ths status line
set laststatus=2

" Beautiful tab
"set list lcs=tab:'|'

" Session restore save
let g:session_autosave = 'no'
let g:session_autoload = 'no'

" support flow
"let g:javascript_plugin_flow = 1

set nowrap

" Explorer vim
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15
nmap <silent> <C-CR> t :rightbelow 20vs<CR>:e .<CR>:wincmd h<CR>
"augroup ProjectDrawer
"autocmd!
"  autocmd VimEnter * :Vexplore
"  autocmd VimEnter * :wincmd p
"augroup END

"set paste
set mouse=a

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" fix indentline breaking qoutes in json files
autocmd Filetype json let g:indentLine_setConceal = 0
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

