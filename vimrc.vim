" =================reference start===================
" 
" common usage:
" g<c-g>           (in visual mode) calculate words and chars
" gt               (in normal mode) switch tabs
" :tabe <filename> to open a new tab
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

" ctrl+s to save file
inoremap <c-s> <esc>:w<CR>a

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

" set iabbrev to some autocmd
augroup autos_for_cpp
    autocmd!
    autocmd FileType cpp :iabbrev <buffer> return return;<left>
augroup END

" for easy editing .vimrc.local
nnoremap <leader>ev :vsplit ~/.vimrc.local<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" for quoting
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>" <esc><esc>`<i"<esc>`>a"<esc>lel
vnoremap <leader>' <esc><esc>`<i'<esc>`>a'<esc>lel

" for moving easily
nnoremap H ^
nnoremap L $
nnoremap <c-h> gT
nnoremap <c-l> gt

" wrap long lines
set wrap

" for NERDTree to open files in new tab
" in menu: `t` to open a file in new tab, `o` to open a file in current tab.
let NERDTreeMapOpenInTab='t'
let NERDTreeQuitOnOpen=0
