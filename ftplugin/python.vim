set nosmartindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Delete blankspace at the end of python code
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pymode settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode_warnings = 0
let g:pymode_trim_whitespace = 1
let g:pymode_options_max_line_length = 79
let g:pymode_syntax = 1
let g:pymode_folding = 0
let g:pymode_lint_checkers = ['pylint', 'pep8', 'mccabe']
let g:pymode_options_colorcolumn = 0 " Turn off column at max_line_length
let g:pymode_lint_on_write = 0  " Do not check code on every save
let g:pymode_rope = 0 " Turn off rope script
