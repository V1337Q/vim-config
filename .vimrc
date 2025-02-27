set relativenumber  
inoremap jk <Esc>

nnoremap <S-H> :m-2<CR>  
nnoremap <S-L> :m+<CR>   
vnoremap <S-H> :m'<-2<CR>gv  
vnoremap <S-L> :m'>+<CR>gv  


nnoremap <C-s> :w!<CR>
inoremap <C-s> <Esc>:w!<CR>

vnoremap <C-9> <Esc>`<i(<Esc>`>la)<Esc>
vnoremap <C-[> <Esc>`<i{<Esc>`>la}<Esc>

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'ghifarit53/tokyonight-vim'
Plug 'easymotion/vim-easymotion'
call plug#end()

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

