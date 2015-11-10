syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
set nobackup            " get rid of anoying ~file
set nowb
set noswapfile

set nocompatible        " do not make vim compatible with vi.
set cursorline          " show location of cursor using a horizontal line.

set scrolloff=999       " keep cursor in the middle of the screen while scrolling up and down.
set wildmenu " show auto complete menus.
set wildmode=list:longest " Make wildmenu behave like bash completion. Finding commands are so easy now.
set ruler "Always show current position
set ignorecase " Ignore case when searching

set smartcase " When searching try to be smart about cases 

set hlsearch " Highlight search results

set showmatch " Show matching brackets when text indicator is over them


set encoding=utf8 " Set utf8 as standard encoding and en_US as the standard language

set ffs=unix,dos,mac " Use Unix as the standard file type

set expandtab " Use spaces instead of tabs

set smarttab " Be smart when using tabs ;)

set shiftwidth=2
set tabstop=2
set backspace=2         " backspace in insert mode works like normal editor

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

set laststatus=2



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle stuff
"

filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('win32')
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle/')
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

Plugin 'altercation/vim-colors-solarized.git' 

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'kien/ctrlp.vim'

Plugin 'bling/vim-airline'

Plugin 'chriskempson/vim-tomorrow-theme'

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

if has('gui_running')
  colorscheme Tomorrow-Night-Bright
  :set guioptions-=T
endif
set background=dark

au BufNewFile,BufRead *.adoc set filetype=asciidoc

