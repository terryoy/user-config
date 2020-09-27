
call plug#begin()

" plugin: vim workspace
Plug 'thaerkh/vim-workspace'

" plugin: neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" plugin: fzf.vim
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" plugin: nerdtree
Plug 'scrooloose/nerdtree'

call plug#end()


" configuratoin for coc.nvim
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" configuration for Nerdtree
nnoremap <silent> <C-k><C-F> :NERDTreeToggle<CR>
