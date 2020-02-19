" default settings
:syntax on
:set autoindent!
:set expandtab
:set tabstop=4
:set shiftwidth=4

" auto commands


" persistent undo



" vim-workspace
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'thaerkh/vim-workspace'
call plug#end()


