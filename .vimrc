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

" autocmd vimenter * NERDTree
" let NERDTreeShowHidden=1

map <F3> :bprevious<CR>
map <F4> :bnext<CR>
map <F6> :bd<CR>

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

:set autochdir 
:set tags+=./tags;

"CtrlP settings
"Install silversearcher-ag module for last command to run
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_show_hidden = 1


function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

source ~/.vim/extend_vimrc/neocomplete.vim

set t_Co=256

"Color schemes

" for vim 8
if (has("termguicolors"))
    set termguicolors
endif

syntax enable

colorscheme github

hi TabLine      guifg=#333 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none
hi TabLineSel   guifg=#666 guibg=#222 gui=bold ctermfg=231 ctermbg=235 cterm=bold
hi TabLineFill  guifg=#999 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none

let g:airline#extensions#tabline#fnamemod = ':t'

let &titlestring = @%
:set title

hi cursorline cterm=none ctermbg=gray ctermfg=black guibg=gray guifg=black
set nocursorline
