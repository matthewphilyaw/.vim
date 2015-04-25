filetype off
set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'
Plugin 'rainbow_parentheses.vim'
Plugin 'ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'leshill/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kana/vim-textobj-user'
Plugin 'bps/vim-textobj-python'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'elixir-lang/vim-elixir'

call vundle#end()
filetype plugin indent on 

filetype plugin on
filetype indent on

let g:rbpt_colorpairs = [
            \ ['black',       'SeaGreen3'],
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]

let g:pymode_rope = 0
let g:pymode_python = 'python3'

"Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0


let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

let g:ctrlp_show_hidden = 1

:setlocal omnifunc=jedi#completions

set t_Co=256
:silent! colorscheme wombat256

let g:SuperTabCrMapping = 1
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

let g:acp_behaviorKeywordCommand = "\<C-x>\<C-o>"

nnoremap <leader>. :CtrlPTag<CR>
" set listchars=tab:--,trail:~,extends:>,precedes:<

syntax enable
set nobackup
set noswapfile
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set foldmethod=syntax
set nofoldenable
set undolevels=1000
set pastetoggle=<F2>
set ruler
set showcmd
set number
set hidden
set incsearch
set ignorecase
set smartcase 
set hlsearch 
set tags=tags;/
set history=1000
set nowrap
set wildignore+=*.class,*.beam,*.jar,*/.git/*,*/.hg/*,*/.svn/*,*/build/*,*/vendor/*,*/tmp/*,*/node_modules/*
set colorcolumn=81

no <C-h> <C-w>h  
no <C-j> <C-w>j
no <C-k> <C-w>k
no <C-l> <C-w>l

let mapleader=","
nmap <silent> ,/ :nohl<CR>
nmap <leader>q :pclose<CR>
map <leader>t :!ctags -R --languages=c,c++ --c++-kinds=+p --fields=+iaS --extra=+q --totals src include <cr>

:hi ColorColumn ctermbg=4

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
