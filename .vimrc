" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    "Add your bundles here
    Bundle 'Syntastic' 
    Bundle 'altercation/vim-colors-solarized' 
    Bundle 'https://github.com/tpope/vim-fugitive' 
    Bundle 'octol/vim-cpp-enhanced-highlight' 
    "...All your other bundles...
    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
    endif
" Setting up Vundle - the vim plugin bundler end

:command Sd SyntasticToggleMode

set nocompatible              " be iMproved, required
filetype indent plugin on                  " required

colo ron
syntax on
set nu
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set hlsearch
set smarttab

set nowrap          "don't wrap lines
set autoindent
set smartindent
set shiftwidth=4  " number of spaces to use for autoindenting
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  " case-sensitive otherwise
set showmode      " always show what mode we're currently editing in
inoremap { {<CR><BS>}<Esc>ko

imap ` <ESC>
nnoremap ; :
nnoremap <ESC><ESC> :nohlsearch<CR>
set background=dark

set clipboard+=unnamed
map <C-c> :s/^/\/\//<Enter>
"adds // to code"
map <C-u> :s/^\/\///<Enter>
"deducts // to code"
