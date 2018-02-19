execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" autocmd FileType php setlocal noexpandtab
set number
set listchars=tab:▸\ ,eol:¬
set list
colorscheme wombat256i
let mapleader = ","
autocmd FileType typescript nmap <buffer> <Leader>a <Plug>(TsuquyomiRenameSymbolC)
function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/Users/robertjanzwetsloot/Projects/fencer'
    setlocal tabstop=4
    setlocal softtabstop=4
    setlocal shiftwidth=4
  endif
  if l:path =~ '/Users/robertjanzwetsloot/Projects/fencer/fencer-vagrant/fencer_code_generator'
    setlocal tabstop=2
    setlocal softtabstop=2
    setlocal shiftwidth=2
  endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()
