filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'rainbow_parentheses.vim'
Bundle 'ctrlp.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'leshill/vim-json'
Bundle 'pangloss/vim-javascript'
Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-markdown'
Bundle 'mustache/vim-mustache-handlebars'

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

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

let g:ctrlp_show_hidden = 1

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

:silent! colorscheme grb256

set omnifunc=syntaxcomplete#Complete 

let OmniCpp_GlobalScopeSearch   = 1
let OmniCpp_DisplayMode         = 1
let OmniCpp_ShowScopeInAbbr     = 1 "do not show namespace in pop-up
let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
let OmniCpp_ShowAccess          = 1 "show access in pop-up
let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
set completeopt=menuone,menu,longest

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
set wildignore+=*.class,*.beam,*.jar,*/.git/*,*/.hg/*,*/.svn/*,*/build/* 
set t_Co=256
set colorcolumn=81

no <C-h> <C-w>h  
no <C-j> <C-w>j
no <C-k> <C-w>k
no <C-l> <C-w>l

nnoremap ; :
let mapleader=","
nmap <silent> ,/ :nohl<CR>
nmap <leader>q :pclose<CR>
map <leader>t :!ctags -R --languages=c,c++ --c++-kinds=+p --fields=+iaS --extra=+q --totals src include <cr>

:hi ColorColumn ctermbg=4
:hi Pmenu ctermbg=4 gui=bold
:hi PmenuSel ctermbg=9 gui=bold
