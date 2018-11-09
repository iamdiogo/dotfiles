" vundle stuff

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'mxw/vim-jsx'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'xuhdev/vim-latex-live-preview'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" my stuff

set directory=$HOME/.vim/swapfiles//

syntax on
filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2

set runtimepath+=$GOROOT/misc/vim

set ruler
set relativenumber

set hlsearch

set ttymouse=xterm2
set mouse=a
set clipboard=unnamedplus

colorscheme codedark

noremap <Space> <C-w><C-w>
map ; :Files<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
