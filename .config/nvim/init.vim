" execute pathogen#infect()
lua require('plugins')
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
set tags=tags;/
set mouse=
" colorscheme wombat256i
let mapleader = ","
autocmd FileType typescript nmap <buffer> <Leader>a <Plug>(TsuquyomiRenameSymbolC)
function! SetupEnvironment()
  let l:path = expand('%:p')
  if l:path =~ '/home/jan/projects/AdgAssetBundleManager'
    setlocal noexpandtab
    setlocal tabstop=2
    setlocal softtabstop=0
    setlocal shiftwidth=2
  endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupEnvironment()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"elixir", "heex", "eex"},
  sync_install = false,
  ignore_install = { },
  highlight = {
    enable = true,
    disable = { },
  },
}
EOF
