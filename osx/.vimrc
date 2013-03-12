syntax on

set ruler
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set background=dark

au BufRead,BufNewFile *.thrift set filetype=thrift
au! Syntax thrift source ~/.vim/thrift.vim
