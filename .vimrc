" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme'
Plug 'franbach/miramare'
Plug 'yggdroot/indentline'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Personal configuration
:set number
:colo miramare
:autocmd InsertEnter,InsertLeave * set cul!
:set nowrapscan
:set ic
:set hlsearch
:hi Search ctermbg=White

" Nerd Tree configuration
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=40
nnoremap <silent> <expr> <F12> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" YAML configuration
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Fugitive configuration
nnoremap <leader>gd :Gvdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>
