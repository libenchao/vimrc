set nocompatible
filetype off

" set leader
let mapleader = ','

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""begin of my plugins""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'scrooloose/nerdtree'
" to show hiddle files with leading char '.'
let NERDTreeShowHidden = 1
" to keep nerdtree in new tab
let NERDTreeKeepTreeInNewTab = 1
" to use mouse
let NERDTreeMouseMode = 2
" to open or close nerdtree
map <C-E> :NERDTreeToggle<CR>
" to find current dir and open it
map <leader>e :NERDTreeFind<CR>


Plugin 'jistr/vim-nerdtree-tabs'


Plugin 'Xuyuanp/nerdtree-git-plugin'


Plugin 'airblade/vim-gitgutter'


Plugin 'altercation/vim-colors-solarized'
" more colors
" let g:solarized_termcolors = 256


Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""end of my plugins""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""below is my own setttings""""""""""""""""""""""

" syntax on
syntax enable

" turn backup off
set nobackup
set nowb
set noswapfile

" show matching bracets
set showmatch

" ignore case when searching
set ignorecase
set incsearch

" show line number
set nu

" tab setting
set tabstop=4
set expandtab

" always show current position
set ruler

" auto indent
set autoindent

" background
set background=dark

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=utf-8

set background=dark
colorscheme default
