set nocompatible
filetype off

" set leader
let mapleader = ' '

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
nnoremap <leader>d :NERDTreeTabsToggle<CR>
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
nnoremap <leader>t :TagbarToggle<CR>


Plugin 'ervandew/supertab'
" seems little useful


Plugin 'lrvick/Conque-Shell'
" usage: :ConqueTermSplit zsh
if has('mac')
    nnoremap <leader>s :ConqueTermSplit<Space>zsh<CR><CR>
    nnoremap <leader>vs :ConqueTermVSplit<Space>zsh<CR><CR>
elseif has('unix')
    nnoremap <leader>s :ConqueTermSplit<Space>bash<CR><CR>
    nnoremap <leader>vs :ConqueTermVSplit<Space>bash<CR><CR>
endif


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


Plugin 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['flake8']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_mode_map = {'mode': 'passive'}

nnoremap <leader>b :SyntasticCheck<CR>
nnoremap <leader>lo :lopen<CR>
nnoremap <leader>lc :lclose<CR>


Plugin 'davidhalter/jedi-vim'
" let g:syntastic_check_on_wq = 0
" let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 1
" let g:jedi#use_splits_not_buffers = "left"
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0
" let g:jedi#show_call_signatures = "1"

let g:jedi#goto_command = "<leader>de"
let g:jedi#goto_assignments_command = "<leader>as"
" let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "<leader>do"
let g:jedi#usages_command = "<leader>us"
let g:jedi#completions_command = "<leader>co"
let g:jedi#rename_command = "<leader>re"

" let g:jedi#completions_enabled = 0


Plugin 'hdima/python-syntax'
let python_highlight_all = 1


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
set smartcase

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

" set mouse moving
set mouse=a

" set fold method, zc to fold, zo to open
set foldmethod=syntax
set foldlevel=20
set foldlevelstart=20

" set completeopt
set completeopt=menuone,noinsert
set infercase
" <c-x><c-f> to complete file name
" <c-x><c-]> to complete from tags
" <c-x><c-k> to complete from dictionary
" <c-x><c-l> to complete line wise
" <c-x><c-n> to complete from current file
" <c-x><c-i> to complete from included files
" <c-n> to compelte from buffer list, included files, tag files

nnoremap  <leader>T :!ctags -R<CR>
" <c-]> to go to defination
" <c-t> to go back
" g<c-]> to list all candidates.

" set colorcolumn
set colorcolumn=80
highlight ColorColumn ctermbg=6

" set clipboard
set clipboard=unnamed

" set prompt auto completion style
set wildmenu
set wildmode=full

" set history number
set history=200

" set <c-p> and <c-n> to behave like <up> and <down> in command line mode.
cnoremap <c-p> <Up>
cnoremap <c-n> <Down>

" set split setting
set splitright
set splitbelow

" set line wrap
set wrap

" shortcut for muting search highlight
nnoremap <silent> <leader>l :<C-u>nohlsearch<CR>

" for easy search on selected text
function! s:VSetSearch()
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g') 
    let @s = temp
endfunction
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR> 
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
