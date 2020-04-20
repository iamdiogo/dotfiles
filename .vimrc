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
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'ap/vim-css-color'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'shime/vim-livedown'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'lervag/vimtex'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'mattn/emmet-vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" my stuff

set directory=$HOME/.vim/swapfiles//
set encoding=utf-8
nmap cp :let @" = expand("%")<cr>
map <C-n> :NERDTreeToggle<CR>

" Extensions custom settings
let g:ale_python_pylint_options = '--load-plugins pylint_django'
let g:ale_completion_enabled = 1

let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts = 1

let g:ftplugin_sql_omni_key = '<C-j>' " hotfix slow ^C while on SQL files

let g:vimtex_view_method = 'zathura'

" Vim normal configs
syntax on
filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start

set runtimepath+=$GOROOT/misc/vim

" Send file change events
set nobackup
set nowritebackup

set ruler
set relativenumber

set hlsearch

set ttymouse=xterm2
set mouse=a
set clipboard^=unnamed,unnamedplus

colorscheme codedark
"colorscheme diogolight

nmap <Space> <C-w><C-w>
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

map ; :Files<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

map q: <Nop>
nnoremap Q <nop>

set smartcase
set ignorecase

set nomodeline

set foldmethod=indent
set nofoldenable
set foldlevel=1000
noremap + zO
noremap - zC

noremap <A-+> zR
noremap <A--> zM

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
