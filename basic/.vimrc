" this file is for Vim

" default settings
:syntax on
:set autoindent!
:set expandtab
:set tabstop=4
:set shiftwidth=4
:set nu
:filetype on
:syntax on

" toggle paste(no auto indent while pasting)
:set paste
:set pastetoggle=<F2>

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

" plugin: vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" plugin: fzf
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'


call plug#end()

