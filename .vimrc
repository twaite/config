syntax enable
colorscheme monokai

filetype plugin on

set number
set relativenumber
set autoread
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:ale_completion_enabled = 1
let g:ale_completion_max_suggestions = 5

map <C-n> :NERDTreeToggle<CR>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" Register LSP (Autocomplete)

if executable('css-languageserver')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'css-languageserver',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
    \ 'whitelist': ['css', 'less', 'sass', 'scss'],
    \ })
endif


call plug#begin()
" Linting / autocomplete
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ryanolsonx/vim-lsp-javascript'
Plug 'w0rp/ale'

Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sickill/vim-monokai'
Plug 'lokikl/vim-ctrlp-ag'
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'hdima/python-syntax'
Plug 'mattn/emmet-vim'
Plug 'scooloose/nerdtree'
Plug 'mxw/vim-jsx'
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'styled-components/vim-styled-components'
call plug#end()
