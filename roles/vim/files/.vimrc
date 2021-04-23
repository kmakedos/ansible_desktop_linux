set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/NERDTree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'myint/clang_complete'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()

set encoding=utf-8
filetype indent on
filetype plugin on
syntax on
let python_highlight_all=1
set ai
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set wildmenu
set nu
set autochdir
set virtualedit=onemore
set ruler
set showcmd
set laststatus=2
set showmatch
set wildmode=list:longest,full
set foldenable
nnoremap <space> za
map <C-l>   :NERDTreeToggle <CR>
let g:ctrlp_map = '<c-p>'
set statusline+=%#warningmsg#
set statusline+=%*
set background=dark
set t_Co=256
color atom-dark-256
let g:clang_library_path = '/usr/lib/x86_64-linux-gnu/libclang-4.0.so.1'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>


if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme zenburn
endif
call togglebg#map("<F5>")
set clipboard=unnamed
