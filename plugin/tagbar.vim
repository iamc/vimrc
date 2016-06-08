""""""""""""""""""""""""""""""""
" Tagbar specific configuration
""""""""""""""""""""""""""""""""

"<F8> abre taglist, se situa en el mismo 
nnoremap <silent> <F8> :TagbarOpen fjc<CR>
"<F9> abre/cierra taglist
nnoremap <silent> <F9> :TagbarToggle<CR>

" ResTructuredText ctags integration
let g:tagbar_type_rst = {
    \ 'ctagstype': 'rst',
    \ 'ctagsbin' : '~/bin/rst2ctags',
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

