"vim
set encoding=utf-8
set cursorline
set ic 
syntax on 
"set expandtab 
set cindent  
set tabstop=4 
set shiftwidth=4 
set number 
set ruler 
set incsearch 
set hlsearch 
set backspace=2 
"color dracula
""""""""""""""""""""""""""""""""""""""""""
"nerdtree
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
au VimEnter *  NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map  <F3>      :NERDTreeMirror <CR>
map  <C-a>     :NERDTreeToggle <CR>
"Switch between file browser and editor
map  <C-LEFT>  :NERDTreeFocus  <CR>
nmap <C-RIGHT> <C-w>l
map  <C-h>     :NERDTreeFocus  <CR>
nmap <C-l>     <C-w>l
"Switch between tabs
map  <S-LEFT>  :bp  <CR>
map  <S-RIGHT> :bn  <CR>
map  <S-h>     :bp  <CR>
map  <S-l>     :bn  <CR>

augroup NERD
    au!
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
augroup END
"auto complete brackets"  
inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
""""""""""""""""""""""""""""""""""""""""""
"airline theme
set ambiwidth=double
let laststatus = 2
let g:airline_powerline_fonts = 1   
"let g:airline_theme="syntastic"     
let g:airline_theme="kolor"      
let g:airline_section_b = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
""""""""""""""""""""""""""""""""""""""""""
"Plugins
call plug#begin('~/.vim/plugged')
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'scrooloose/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'sheerun/vim-polyglot'
	Plug 'ryanoasis/vim-devicons'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""
")
set t_Co=256
