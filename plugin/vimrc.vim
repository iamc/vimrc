""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General vim configuration options.
"
" Plugin specifig configuration in plugin_name.vim files.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set mapleader to be usable it spanish keyboard
let mapleader = ","
let g:mapleader = ","

" general options

" search options
set incsearch		" do incremental searching
set ignorecase 	        " Case insensitive by default
set smartcase           " If there are caps, go case-sensitive
set wrapscan            " Searches wrap around the end of the file.


set autowrite  " Write the contents of the file, if it has been modified, on
               " each :next, :rewind, :last, :first, :previous, :stop, :suspend, :tag, :!,
               " :make, CTRL-] and CTRL-^ command; and when a :buffer, CTRL-O, CTRL-I,
               " '{A-Z0-9}, or `{A-Z0-9} command takes one to another file.





""""""""""""""""""
" PLUGINS
""""""""""""""""""

" Plugin specific configurations go into vimrc/plugin/plugin_name.vim files 
