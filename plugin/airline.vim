"""""""""""""""""""""""" 
" Airline configurations
"""""""""""""""""""""""" 

" In order to statusline to appear when only havin g one bufer.
set laststatus=2

"  Make sure powerline fonts are used
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_symbols.space = "\ua0"

let g:airline_theme="solarized"


" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
" display buffer numbers
let g:airline#extensions#tabline#buffer_nr_show = 1

autocmd VimEnter * AirlineToggleWhitespace
