" this file is for NeoVim

" default settings
syntax on
set autoindent
set paste
set expandtab
set tabstop=4
set shiftwidth=4

" toggle paste(no auto indent while pasting)
set pastetoggle=<F2>

" auto commands


" persistent undo



" vim-workspace
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


" Intsall plugins
call plug#begin('~/.vim/plugged')

" plugin: vim workspace
Plug 'thaerkh/vim-workspace'

" plugin: fzf
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'


call plug#end()

