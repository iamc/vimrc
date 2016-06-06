""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set mapleader to be usable it spanish keyboard
let mapleader = ","
let g:mapleader = ","

" general options







""""""""""""""""""
" PLUGINS
""""""""""""""""""

" Tagbar
""""""""

"<F8> abre taglist y se situa en el mismo 
nnoremap <silent> <F8> :TagbarOpen<CR>
"<F9> abre/cierra taglist
nnoremap <silent> <F9> :TagbarToggle<CR>
" cierra el taglist al seleccionar un tag
let Tagbar_Close_On_Select = 1
" vim se cierra si solo existe la ventan de taglist
let Tagbar_Exit_OnlyWindow = 1
" pliega los taglist de ficheros que no estan en ventana
let Tagbar_File_Fold_Auto_Close = 1
" para evitar corrupcion del display
let Tagbar_Inc_Winwidth = 0

" ResTructuredText ctags integration
let g:tagbar_type_rst = {
    \ 'ctagstype': 'rst',
    \ 'ctagsbin' : 'rst2ctags',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

