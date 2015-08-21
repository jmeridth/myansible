set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let mapleader=","
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
""" Plugin 'Xuyuanp/nerdtree-git-plugin'
""" syntax plugins
Plugin 'scrooloose/syntastic.git'
Plugin 'scrooloose/nerdcommenter.git'
"" There is a compile portion for YouCompleteMe
"" http://valloric.github.io/YouCompleteMe/
Plugin 'Valloric/YouCompleteMe.git'
""" snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
""" git plugins
Plugin 'tpope/vim-fugitive.git'
""" python plugins
Plugin 'mitechie/pyflakes-pathogen.git'
Plugin 'fs111/pydoc.vim.git'
Plugin 'rkulla/pydiction.git'
Plugin 'nvie/vim-flake8.git'
""" ruby plugins
Plugin 'vim-ruby/vim-ruby.git'
""" javascript plugins
Plugin 'pangloss/vim-javascript'
Plugin 'walm/jshint.vim.git'
""" react.js plugins
Plugin 'mxw/vim-jsx'
Plugin 'justinj/vim-react-snippets'
""" markdown plugins
Plugin 'plasticboy/vim-markdown.git'
""" coffeescriptplugins
Plugin 'kchmck/vim-coffee-script.git'
""" fonts and color plugins
Plugin 'bling/vim-airline.git'
Plugin 'flazz/vim-colorschemes.git'
Plugin 'altercation/vim-colors-solarized.git'
call vundle#end()
"" Some new configurations
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
""Vertical split then hop to new buffer
:noremap <Leader>v <c-w>v<cr>
:noremap <Leader>h <c-w>s<cr>
"" set color depth
set term=xterm-256color
"" space not tab
set expandtab
set smarttab
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4 colorcolumn=80
set laststatus=2                  " always show status line
"" Syntastic
"" from https://github.com/scrooloose/syntastic#3-recommended-settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"" Syntastic python
let g:syntastic_python_flake8_args = "--builtins=_"
let g:syntastic_python_checkers=['flake8']
"" Syntastic ruby
let g:syntastic_ruby_checkers=['rubocop', 'rubylint']
let g:syntastic_ruby_rubocop_exec='~/.rubocop.sh'
"" CoffeeScript ruby
let g:syntastic_cofee_checkers=['coffee', 'coffeelint']
"" Syntastic yaml
let g:syntastic_yaml_checkers=['jsyaml']
"" Syntastic react.js
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:Syntastic_javascript_checkers = ['eslint', 'jshint']
"" airline
let g:airline_theme = "wombat"
let g:airline_powerline_fonts = 1
"" Pytdiction
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
filetype indent plugin on
syntax on                         " syntax coloring on
set cursorline                    " hightlight current line
set cursorline

"" autoindent
set ai

"" smartindent
set si

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

"" disable code folding
set nofoldenable

"" enable code folding
"" set foldmethod=indent
"" nnoremap <space> za
"" vnoremap <space> zf

"" show line numbers
set number

"" use central directories
set directory=~/.vimswap//
set backupdir=~/.vimbackup//

"" colors
set background=dark
colorscheme vividchalk
