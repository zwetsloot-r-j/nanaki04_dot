execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set listchars=tab:▸\ ,eol:¬
set list
colorscheme wombat256i
let mapleader = ","
autocmd FileType typescript nmap <buffer> <Leader>a <Plug>(TsuquyomiRenameSymbolC)
"let g:syntastic_typescript_checkers = ['tslint']
"let g:syntastic_check_on_wq = 1
"let g:syntastic_check_on_open = 1
