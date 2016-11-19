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


Plugin 'jistr/vim-nerdtree-tabs'
" to open or close nerdtree
map <leader>d :NERDTreeTabsToggle<CR>
" to manipulate dirs and files like create and delete, `m` to list operations.


Plugin 'Xuyuanp/nerdtree-git-plugin'
" for git status in nerdtree


Plugin 'airblade/vim-gitgutter'
" for git status for files managed by git


Plugin 'ctrlpvim/ctrlp.vim'
" to find file using filename.
nnoremap <leader>f :CtrlP<CR>
" to show hiddle files
let g:ctrlp_show_hidden = 1


Plugin 'mileszs/ack.vim'
" to find file using keywords. This needs `ack` in path.
nnoremap <Leader>a :Ack!<Space>


Plugin 'majutsushi/tagbar'
" to show tags for current file.
map <leader>t :TagbarToggle<CR>


Plugin 'vim-syntastic/syntastic'
" set statuslines
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" some suggestion settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" for maven project, need to run `mvn dependency:build-classpath`, even to
" reboot the system.


Plugin 'artur-shaik/vim-javacomplete2'
" caution: needs high vim version, and a little slow when open java files.
" to open auto complete for java
autocmd FileType java setlocal omnifunc=javacomplete#Complete
" to use vim-javacomplete2, <c-x-o>
" also, JCimport*, JCgenerate* has many useful commands


Plugin 'vim-scripts/AutoComplPop'
" to automatically pop some candidates for <c-p>


Plugin 'klen/python-mode'
" bug: can only use print()


Plugin 'ervandew/supertab'
" seems little useful


Plugin 'altercation/vim-colors-solarized'
" good colorscheme


Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" <leader>,<space> to trigger


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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""below is my own setttings""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set syntax
syntax on

" turn backup off
set nobackup
set nowb
set noswapfile

" show matching bracets
set showmatch

" search setting
set ignorecase
set incsearch
set hlsearch

" show line number
set nu

" tab setting
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" always show current position
set ruler

" auto indent
set autoindent
set smarttab

" background
set background=dark

" set encoding
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=utf-8

" set colorscheme
colorscheme solarized

" for mac bug, `return` cannot use.
set backspace=2

" cursor setting
set cursorline
" set cursorcolumn
" bug, cursor will not show block at first, and when it shows block,
" commandline will be affected too.
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" for easier moving between tabs
nnoremap tj gT
nnoremap th gT
nnoremap tk gt
nnoremap tl gt

" for easier moving between windows
nnoremap wh <c-w>h
nnoremap wj <c-w>j
nnoremap wk <c-w>k
nnoremap wl <c-w>l

" set mouse moving
set mouse=a

" set fold method, zc to fold, zo to open
set foldmethod=syntax
set foldlevel=20
set foldlevelstart=20

