
call plug#begin()

" plugin: vim workspace
Plug 'thaerkh/vim-workspace'

" plugin: neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" plugin: fzf.vim
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

call plug#end()
