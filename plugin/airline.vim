"""""""""""""""""""""""" 
" Airline configurations
"""""""""""""""""""""""" 

" In order to statusline to appear when only havin g one bufer.
set laststatus=2

" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

autocmd VimEnter * AirlineToggleWhitespace
