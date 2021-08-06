""" guoyiyuan's Neovim Init.vim

""" Vim-Plug
call plug#begin('~/.vim/plugged')

" theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'

" Functionalities
Plug 'preservim/nerdtree'
Plug 'preservim/vimux'
Plug 'preservim/vim-pencil'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'majutsushi/tagbar'
Plug 'ycm-core/youcompleteme'

call plug#end()

""" Basic Setup
set encoding=UTF-8
