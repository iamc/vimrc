"set makeprg=rst2pdf\ -l\ en_US\ %
"set makeprg=rst2pdf\ .shellscape(%)
set makeprg=rst2pdf\ '%'

setlocal wrap
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal smarttab
setlocal expandtab

setlocal autoindent
setlocal nosmartindent

" from http://bernh.net/projects/rst2ctags/
let Tlist_Ctags_Cmd = '/usr/bin/rst2ctags --taglist'
let tlist_rst_settings = 'rst;s:sections;i:images'

