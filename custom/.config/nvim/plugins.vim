
call plug#begin()

" plugin: vim workspace
Plug 'thaerkh/vim-workspace'

" plugin: neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" plugin: fzf.vim
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

call plug#end()


" configuratoin for coc.nvim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
