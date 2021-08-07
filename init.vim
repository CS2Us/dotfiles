""" guoyiyuan's Neovim Init.vim

""" Vim-Plug
call plug#begin('~/.vim/plugged')

" theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'

" Functionalities
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/vimux'
Plug 'preservim/vim-pencil'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'majutsushi/tagbar'
Plug 'ycm-core/youcompleteme'
" Plug 'wincent/command-t'
Plug 'wincent/ferret'
Plug 'breuckelen/vim-resize'

call plug#end()

""" Basic Setup
set encoding=UTF-8

""" 映射Save key
nmap <Leader>w :w!<cr>
nmap <Leader>q :q<cr>

""" 映射Buffer key
nmap <Leader>b :ls<CR>:b

""" 映射Tab key
nmap <Leader>t :tabs<CR>:tab

""" 映射Esc key
inoremap jj <Esc>

""" 映射fzf :Files
nmap <Leader>o :Files<CR>

""" 映射ferret
nmap <Leader>f :Ack<Space>

""" 映射YouCompleteMe
nmap <leader>jd :YcmCompleter GoTo<CR>

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

set number

" Be smart when using tabs
set smarttab

" Use spaces instead of tabs
set expandtab

" 1 tab = 2 spaces
set shiftwidth=2
set tabstop=1

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Copy to system clipboard
vnoremap <leader>y  "+y
nnoremap <leader>Y  "+yg_
nnoremap <leader>y  "+y
