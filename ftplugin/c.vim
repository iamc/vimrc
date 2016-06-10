"""""""""""""""""""""""""""""""""""""""""""""""
" My C settings
"""""""""""""""""""""""""""""""""""""""""""""""
function! s:MyCSettings()
    ab #d #define
    ab #i #include
    ab #b /******************************************************************
    ab #e ******************************************************************/
    ab #l /*----------------------------------------------------------------*/
    set formatoptions=croql
    set cindent
    setlocal autoindent
    set sw=4
    set ts=4
    set notextmode
    set notextauto
    set hlsearch
    set incsearch
    set textwidth=0
    set makeprg=gmake
    set wrapscan "Searches wrap around the end of the file.
    set nowrap
    set nu
    set list listchars=tab:>-,trail:.,precedes:<,extends:>

    "for std_c syntax file
    let c_syntax_for_h = 1
    let c_C94 = 1
    let c_C99_warn = 1
    let c_cpp_warn = 1
    let c_warn_8bitchars = 1
    let c_warn_multichar = 1
    let c_warn_digraph = 1
    let c_warn_trigraph = 1
    let c_no_octal = 1

    "If you want colourful comments then add the following variables to your
    "startup file: >
    let c_comment_strings = 1
    let c_comment_numbers = 1
    let c_comment_types = 1
    let c_comment_date_time = 1

    "and some other
    let c_no_if0 = 1
    let c_space_errors = 1
    let c_syntax_for_h = 1

    set comments=sr:/*,mb:*,ex:*/,://,b:#  
    set dictionary+=$HOME/.vim/syntax/c.dict,./tags
endfunction 
"""""""""""""""""""""""""""""""""""""""""""""""
