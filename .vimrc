" Start of Config
source ~/.vim/keymaps.vim
source ~/.vim/startify.vim
source ~/.vim/vimtex.vim 
set number
set cursorline
set relativenumber  
set virtualedit=onemore  
set autoindent
set clipboard=unnamedplus
let mapleader = " "
" set fillchars+=vert:\
" set fillchars+=horiz:\
" set fillchars+=vert:\ ,horiz:\
set fillchars=fold:\
" set smartindent
" let g:AutoPairsMapCh = 0

" Keymaps for easy navigation
inoremap jk <Esc>
" vnoremap J :m'>+1<CR>gv  
" vnoremap K :m'<-2<CR>gv  
vnoremap <C-j> :m'>+1<CR>gv  
vnoremap <C-k> :m'<-2<CR>gv  
nnoremap QQ :qa!<CR>
nnoremap ZQ :wq!<CR>
vnoremap ; <Esc>
nnoremap <C-s> :w!<CR>
inoremap <C-s> <Esc>:w!<CR>
nnoremap <C-o> o<Esc>k<CR>gv
nnoremap <Leader>h :TerminalSplit bash<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
" nnoremap <leader>y "+y
nnoremap y "+y
nnoremap p "+p
vnoremap J gj
vnoremap K gk
" = Fast Scrolling =  
" Easy shits
" inoremap ( ()<Left>
" inoremap [ []<Left>
" inoremap { {}<Left>
" inoremap " ""<Left>
" inoremap ' ''<Left>

" Keymaps for NERDtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Keymaps  for fzf.vim
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Keymaps for coc.nvim
" Use <Tab> and <S-Tab> to navigate completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <CR> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Options for coc.Vim
let g:coc_disable_signs = 1
" set signcolumn=yes:1
" set signcolumn=no
" highlight signcolumn guibg=NONE ctermbg=NONE
" highlight SignColumn ctermbg=green
"
" Options for buftabline
set hidden
" nnoremap <C-N> :bnext<CR>
" nnoremap <C-P> :bprev<CR>
nnoremap n :bnext<CR>
nnoremap N :bprev<CR>
" let g:coc_global_extensions = ['coc-rls']
let g:coc_global_extensions = ['coc-rust-analyzer']
" let g:coc_global_extensions = ['coc-asm-lsp']

" Options for vim-airline 
" let g:airline_section_x = ''  " Disable the z section
let g:airline_section_y = ''  " Disable the z section
" let g:airline_section_z = ''  " Disable the z section
" let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 0

" Settings for NERDtree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMinimalMenu = 1

" Settings for coc.nvim
let g:coc_disable_startup_warning = 1

" Keymaps for Vim-Terminal
nnoremap <Leader>h :TerminalSplit bash<CR>

" Settings for buftabline
let g:buftabline_show = 0  " Disable buftabline
let g:buftabline_separator = '|'
let g:buftabline_arrow = '▶'

" Plugins (Statusline, Theme, motion)
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ghifarit53/tokyonight-vim'
Plug 'mhinz/vim-startify'
" Plug 'catppuccin/vim'
" Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'prabirshrestha/vim-lsp'
Plug 'tc50cal/vim-terminal'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-buftabline'
Plug '~/.vim/plugged/comvimed'
Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
" Plug 'bling/vim-bufferline'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'ryanoasis/vim-devicons'
call plug#end()


" Settings for Vim-Airline

" Tokyonight Colorscheme
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
" let g:airline_theme = 'catppuccin_mocha'
colorscheme tokyonight
highlight CursorLineSign guifg=#7aa2f7 ctermfg=81    
command! RunRust !cargo run

" Map <F5> to compile and run Rust code
nnoremap <F5> :RunRust<CR>

augroup RustRun
    autocmd!
    autocmd FileType rust nnoremap <buffer> <F5> :RunRust<CR>
augroup END

      " \ 'n' : '󰊠',

let g:airline_mode_map = {
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'R',
      \ 'v' : 'V',
      \ 'V' : 'VL',
      \ "\<C-v>" : 'VB',
      \ 'c' : 'C',
      \ 's' : 'S',
      \ 'S' : 'SL',
      \ "\<C-s>" : 'SB',
      \ 't': 'T',
      \}

"  \ ' %3p%%',
" let g:bufferline_separator = ' ▏'  
" let g:airline_section_z = ''
" let g:airline_section_z = airline#section#create([
"   \ '%{&filetype}',
"   \ ' %l|%L | %c|%C',
"   \ ' %3p%%',
"   \ ' %{airline#extensions#coc#get_status()}',
"   \ ' %{get(g:, "coc_git_status", "")}',
" \ ])
function! MaxColumn()
  return virtcol('$')
endfunction
  " \ ' %{substitute(airline#extensions#coc#get_status(), "[✗✓➜]", "", "g")}',  

  " \ '%{&filetype}',
  " \ ' %3p%%',
  " \ ' %{airline#extensions#coc#get_status()}',
let g:airline_section_z = airline#section#create([
  \ ' %l|%L | %c|%{MaxColumn()}',
  \ ' %{get(g:, "coc_git_status", "")}',
\ ])

" function! AirlineBuffers()
"   let buffers = []
"   for nr in filter(range(1, bufnr('$')), 'buflisted(v:val)')
"     call add(buffers, fnamemodify(bufname(nr), ':t'))
"   endfor
"   return join(buffers, ' | ')
" endfunction

" let g:airline_section_c = '%{AirlineBuffers()}'
set runtimepath+=~/.vim/plugged/buffereze
