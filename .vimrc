" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme'
Plug 'yggdroot/indentline'
Plug 'junegunn/seoul256.vim'
Plug 'preservim/nerdcommenter'
Plug 'puremourning/vimspector'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Personal configuration
:set number
let g:seoul256_background = 256
colo seoul256-light
:autocmd InsertEnter,InsertLeave * set cul!
:set nowrapscan
:set ic
:set hlsearch
:hi Search ctermbg=White
nnoremap <F10> :set nu!<return>

" Closing braket stuff. Use ctrl + v to escape these commands
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

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
" f12 toggle nerd tree
nnoremap <silent> <expr> <F12> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

" YAML configuration
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Fugitive configuration
nnoremap <leader>gd :Gvdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" vim-go configuration
let g:go_highlight_types=1

" vimspector configuration
"let g:vimspector_enable_mappings = 'HUMAN'
