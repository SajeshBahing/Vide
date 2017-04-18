execute pathogen#infect()

filetype plugin indent on
syntax on
:set hidden
:set wildmenu
:set ignorecase
:set smartcase
:set backspace=indent,eol,start
:set autoindent
:set nostartofline
:set ruler
:set laststatus=2
:set number

:set tabstop=4
:set expandtab
:set shiftwidth=4
:set autoindent
:set cindent 

autocmd vimenter * NERDTree

map <F3> :bprevious<CR>
map <F4> :bnext<CR>
map <F5> :bd<CR>

:set path=$PWD/**

" Php syntax highlight settings
:set statusline+=%#warningmsg#
:set statusline+=%{SyntasticStatuslineFlag()}
:set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" php-codesniffer, phpmd and php must be installed for these to work.
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

"CtrlP settings
"Install silversearcher-ag module for last command to run
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

