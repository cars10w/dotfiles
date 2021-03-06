syntax on                 " syntax highlighting
filetype indent on        " activates indenting for files
set autoindent            " auto indenting
set number                " line numbers
set nobackup              " get rid of anoying ~file
set nowb
set noswapfile

set nocompatible          " do not make vim compatible with vi.
set cursorline            " show location of cursor using a horizontal line.

set scrolloff=10          " keep cursor in the middle of the screen while scrolling up and down.
set wildmenu              " show auto complete menus.
set wildmode=list:longest " Make wildmenu behave like bash completion. Finding commands are so easy now.
set ruler                 " Always show current position
set ignorecase            " Ignore case when searching

set smartcase             " When searching try to be smart about cases

set hlsearch              " Highlight search results

set incsearch             " incremental search

set showmatch             " Show matching brackets when text indicator is over them
set mat=2                 " How many tenths of a second to blink when matching brackets

set encoding=utf8         " Set utf8 as standard encoding and en_US as the standard language

set ffs=unix,dos,mac      " Use Unix as the standard file type

set expandtab             " Use spaces instead of tabs

set smarttab              " Be smart when using tabs ;)

set lazyredraw            " Do not redraw while executing macros

set magic                 " For regexp turn magic on

set shiftwidth=2
set tabstop=2
set softtabstop=2
set backspace=2           " backspace in insert mode works like normal editor

set ai                    " Auto indent
set si                    " Smart indent
set wrap                  " Wrap lines

if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

set laststatus=2

" mapleader stuff
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle stuff
"

filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('win32')
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle/')
else
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
endif
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some nice colorschemes
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'chriskempson/vim-tomorrow-theme'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Markdown support (needs tabular plugin)
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

let g:vim_markdown_folding_disabled=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-P
Plugin 'kien/ctrlp.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline - Nice statusbars
Plugin 'bling/vim-airline'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree file browser
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
Plugin 'majutsushi/tagbar'

nmap <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Better JSON
Plugin 'elzr/vim-json'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" elixir-lang
Plugin 'elixir-lang/vim-elixir'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"
" End of Vundle stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Color settings
if has('gui_running')
  colorscheme Tomorrow-Night-Bright
  set guioptions-=T
  set lines=50 columns=100
endif
set background=dark

" Other stuff
au BufNewFile,BufRead *.adoc set filetype=asciidoc

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Quickly open a buffer for scribble
" map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
" map <leader>x :e ~/buffer.md<cr>

