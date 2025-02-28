" Start of Config
" Config by Kai_Je0
set relativenumber  

" Keymaps for easy navigation
inoremap jk <Esc>
vnoremap J :m'>+<CR>gv  
vnoremap K :m'<-2<CR>gv  
nnoremap QQ :qa!<CR>
nnoremap ZQ :wq!<CR>
vnoremap ; <Esc>
nnoremap <C-s> :w!<CR>
inoremap <C-s> <Esc>:w!<CR>
nnoremap <C-o> o<Esc>k<CR>gv

" Keymaps for NERDtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Plugins (Statusline, Theme, motion)
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'ghifarit53/tokyonight-vim'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
call plug#end()

" Tokyonight Colorscheme
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0

colorscheme tokyonight
