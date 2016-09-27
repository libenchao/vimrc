" =================reference start===================
"
" NERDTree (for showing directory tree)
" <c-e>            to open side bar of directory.
" <leader>e        to detect corrent file's directory and show it.
"
" NERDCommenter (for commenting and uncommenting)
" <leader>c<space> to comment and uncomment block codes.
" <leader>c$       to comment from cursor to the end of line.
" <leader>cA       to add comment delimiter to the end of line and goes into insert
"                  mode between them
"
" =================reference end=====================

" paste using ctrl+v
inoremap <c-v> <esc>p$a
nnoremap <c-v> p

" move lines up and down
noremap - :m .+1<CR>
noremap _ :m .-2<CR>

" delete one line in insert mode
inoremap <c-d> <esc>ddi

" convert current word to uppercase in insert mode
inoremap <c-u> <esc>viwUwa

" convert current word to uppercase in normal mode
nnoremap <c-u> viwU

" set iabbrev to correct typos
iabbrev inlcude include
iabbrev itn int

" set iabbrev to shorten words
iabbrev umap unordered_map
iabbrev uset unordered_set
iabbrev @@ libenchao@gmail.com
iabbrev #i #include

" for easy editing .vimrc.local
nnoremap <leader>ev :vsplit ~/.vimrc.local<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" for quoting and move cursor easily
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>" <esc><esc>`<i"<esc>`>a"<esc>lel
vnoremap <leader>' <esc><esc>`<i'<esc>`>a'<esc>lel
nnoremap H ^
nnoremap L $
