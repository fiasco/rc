"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mikes fucking rad .vimrc file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " get out of horrible vi-compatible mode
filetype on " detect the type of file
set history=10000 " How many lines of history to remember
"set clipboard+=unnamed " turns out I do like clipboard
set ffs=unix,dos,mac " support all three, in this order
filetype plugin on " load filetype plugins
set viminfo+=! " make sure it can save viminfo

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on " syntax highlighting on
"colorscheme zellner 
set background=light " we are using a dark background
"set lsp=1 " space it out a little more (easier to read)
"set wildmenu " turn on wild menu
set ruler " Always show current positions along the bottom 
set cmdheight=1 " the command bar is 1 high
"set lz " do not redraw while running macros (much faster) (LazyRedraw)
set shortmess=atI " shortens messages to avoid 'press a key' prompt 
set report=0 " tell us when anything is changed via :...
set noerrorbells " don't make noise

""""""
" kick-ass statusline
""""""
 function! CurDir()
     let curdir = substitute(getcwd(), '/home/josh', "~/", "g")
     return curdir
  endfunction
  "Format the statusline
  set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L\ Column:\%c

"""""""""""""""""""""""""""""""""""""""
" Misc stuff to do that makes sense
"""""""""""""""""""""""""""""""""""""""
set nobackup " turn off file backup, because its fucking balls
"set nowb
set noswapfile
set laststatus=2 " always show the status line
set nonu " I don't like fucking numbers.
set nowrap " do not wrap lines
" I keep typing :Q! instead of :q! and it's fucking annoying
" this fixes it ;)
command -bang -bar Q :q<bang>
"this is some more visual tweaking, but i can't be fucked moving it up
" lets comments look the same
"set comments+=b:\"
"set comments+=n::
"set comments+=b:#

""""""""""""""""""""""""""""""""""""""
" Drupal/PHP Stuff
""""""""""""""""""""""""""""""""""""""
"syntax on gives us syntax highlighting
"set nostartofline

"syntax highlighting inside php sql queries
let php_sql_query = 1

"set the spaces instead of regular tab
set expandtab

"sets tab and shiftwidth to 2 spaces according to drupals coding standard
set tabstop=2 shiftwidth=2

"give filenames with .inc, .module and .php the php syntax highlighting 
autocmd BufRead .inc,.module,.install,.test set ft=php

"use the same indent from current line when starting a new line
set autoindent

"use smart autoindenting. Used when line ends with {
set smartindent

"sets vim in pastemode and you avoid unwanted sideeffects
set paste

"the incremental search gives us matching words as you type.
set incsearch

"the highlight search will highlight all matchings, and you can browse the document to see all matches
set hlsearch

"noremap <buffer> <F2>#d<CR> :source ~/.drupal_vim/.drupal.vimrc<CR>
