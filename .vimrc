execute pathogen#infect()

filetype plugin indent on
syntax on

:set tabstop=4
:set expandtab
:set shiftwidth=4
:set autoindent
:set smartindent   
:set cindent 

autocmd vimenter * NERDTree

map <F3> :bprevious<CR>
map <F4> :bnext<CR>
map <F5> :bd<CR>

:set path=$PWD/**
