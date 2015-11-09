set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
colorscheme ron         " colorscheme desert
set background=dark
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

set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

filetype plugin indent on

if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

set laststatus=2



