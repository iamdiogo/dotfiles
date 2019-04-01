""""""""""""""""""""""""
" My Vim configuration "
""""""""""""""""""""""""

" vundle stuff

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
"Plugin 'mxw/vim-jsx'
"Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'shime/vim-livedown'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'mattn/emmet-vim'
" Plugin 'JamshedVesuna/vim-markdown-preview'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" my stuff

set directory=$HOME/.vim/swapfiles//

" set encoding=utf-8

" Extensions custom settings
let g:ale_python_pylint_options = '--load-plugins pylint_django'
let g:airline#extensions#branch#enabled=1

" let g:airline_powerline_fonts=1
" let g:Powerline_symbols='utf-8'

syntax on
filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start

set runtimepath+=$GOROOT/misc/vim

set ruler
set relativenumber

set hlsearch

set ttymouse=xterm2
set mouse=a
set clipboard^=unnamed,unnamedplus

colorscheme codedark

noremap <Space> <C-w><C-w>
map ; :Files<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
