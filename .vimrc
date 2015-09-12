"set nocompatible              " be iMproved, required
"filetype off                  " required

colo ron
syntax on
set nu
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

"set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set hlsearch

set nowrap          "don't wrap lines
set autoindent
set shiftwidth=4  " number of spaces to use for autoindenting
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  " case-sensitive otherwise
set showmode      " always show what mode we're currently editing in

imap ` <ESC>
nnoremap ; :
nnoremap <ESC><ESC> :nohlsearch<CR>
set background=dark
