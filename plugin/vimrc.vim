""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General vim configuration options.
"
" Plugin specifig configuration in plugin_name.vim files.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set mapleader to be usable it spanish keyboard
let mapleader = ","
let g:mapleader = ","


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General keyboard mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ease vimrc editing/reloading
map <leader>e :e ~/.vimrc<cr>      " edit my .vimrc file
autocmd! bufwritepost vimrc source ~/.vimrc  " reload settings when editting .vimrc
map <leader>u :source ~/.vimrc<cr> " update the system settings from my vimrc file

" search options
set incsearch		" do incremental searching
set ignorecase 	        " Case insensitive by default
set smartcase           " If there are caps, go case-sensitive
set wrapscan            " Searches wrap around the end of the file.


set autowrite  " Write the contents of the file, if it has been modified, on
               " each :next, :rewind, :last, :first, :previous, :stop, :suspend, :tag, :!,
               " :make, CTRL-] and CTRL-^ command; and when a :buffer, CTRL-O, CTRL-I,
               " '{A-Z0-9}, or `{A-Z0-9} command takes one to another file.

" Ease tag movement: use ALT+LeftArrow and ALT+RightArrow to move between
"   the tags/files with more natural key bindings.
map <silent><A-Right> <C-]>
map <silent><A-Left> <C-T>

" Toogle fold in normal mode, if one exists
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf

" Various keyboard mappings
map <C-Right> :bprevious<CR>  " map CTRL+RightArrow to open previous buffer
map <C-Left>  :bnext<CR>      " map CTRL+LeftArrow to open next buffer
imap jj <ESC>                 " map jj to exit insert mode
"----- write out html file
map <leader>h :source $VIMRUNTIME/syntax/2html.vim<cr>:w<cr>:clo<cr>
nmap <silent> // :nohlsearch<CR>


""""""""""""""""""""""
" netrw
""""""""""""""""""""""
" http://stackoverflow.com/questions/5006950/setting-netrw-like-nerdtree
" Toggle Vexplore with Ctrl-E
com!  -nargs=* -bar -bang -complete=dir  Lexplore  call netrw#Lexplore(<q-args>, <bang>0)

fun! Lexplore(dir, right)
  if exists("t:netrw_lexbufnr")
  " close down netrw explorer window
  let lexwinnr = bufwinnr(t:netrw_lexbufnr)
  if lexwinnr != -1
    let curwin = winnr()
    exe lexwinnr."wincmd w"
    close
    exe curwin."wincmd w"
  endif
  unlet t:netrw_lexbufnr

  else
    " open netrw explorer window in the dir of current file
    " (even on remote files)
    let path = substitute(exists("b:netrw_curdir")? b:netrw_curdir : expand("%:p"), '^\(.*[/\\]\)[^/\\]*$','\1','e')
    exe (a:right? "botright" : "topleft")." vertical ".((g:netrw_winsize > 0)? (g:netrw_winsize*winwidth(0))/100 : -g:netrw_winsize) . " new"
    if a:dir != ""
      exe "Explore ".a:dir
    else
      exe "Explore ".path
    endif
    setlocal winfixwidth
    let t:netrw_lexbufnr = bufnr("%")
  endif
endfun

" Suggested options to behave like NERDTree:
" absolute width of netrw window
let g:netrw_winsize = -28

" do not display info on the top of window
let g:netrw_banner = 0

" tree-view
let g:netrw_liststyle = 3

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" use the previous window to open file
let g:netrw_browse_split = 4
map <silent> <C-E> :Lexplore<CR>



