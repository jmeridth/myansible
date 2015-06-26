set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'mitechie/pyflakes-pathogen.git'
Plugin 'fs111/pydoc.vim.git'
Plugin 'rkulla/pydiction.git'
Plugin 'nvie/vim-flake8.git'
Plugin 'plasticboy/vim-markdown.git'
Plugin 'sjl/gundo.vim.git'
"" There is a compile portion for YouCompleteMe
"" http://valloric.github.io/YouCompleteMe/
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

"" Some new configurations
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

""Vertical split then hop to new buffer
:noremap ,v <c-w>v<cr>
:noremap ,h <c-w>s<cr>

"" set color depth
set term=xterm-256color

"" space not tab
set expandtab
set smarttab
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype python setlocal ts=4 sts=4 sw=4

"" Syntastic
let g:syntastic_check_on_open= 1
let g:syntastic_python_flake8_args = "--builtins=_"
let g:syntastic_python_checkers=['flake8']

"" airline
let g:airline_theme = "wombat"
let g:airline_powerline_fonts = 1

"" Pytdiction
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

"" syntax coloring on
filetype indent plugin on
set filetype=python
syntax on

"" solarized
set background=dark
colorscheme solarized

"" highlight current line
"" set cursorline

"" autoindent
set ai

"" smartindent
set si

"" always show statusline
set laststatus=2

"" ignore case on search
set ignorecase

"" highlight search results
set hlsearch

"" show matching brackets
set showmatch
"" and blink for 2 seconds
set mat=2

"" disable error bells
set noerrorbells
set novisualbell

"" enable code folding
"" set foldmethod=indent
"" nnoremap <space> za
"" vnoremap <space> zf

"" show line numbers
set number

"" use central directories
set directory=~/.vimswap//
set backupdir=~/.vimbackup//

"" show the column ruler at 80 chars
set colorcolumn=80

"" select colorscheme here
colorscheme vividchalk
