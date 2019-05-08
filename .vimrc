syntax enable
colorscheme monokai

filetype plugin on
au BufNewFile,BufRead *.svelte set filetype=html

" General Config
set number
set relativenumber
set autoread
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set encoding=UTF-8
set mouse=nv
tnoremap <Esc> <C-\><C-n>

let mapleader = ' '

" Search Config
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ackprg = 'ag --nogroup --nocolor --column'

nnoremap <c-f> :CtrlPag<cr>
vnoremap <c-f> :CtrlPagVisual<cr>
nnoremap <leader>ca :CtrlPagLocate
nnoremap <leader>cp :CtrlPagPrevious<cr>
let g:ctrlp_ag_ignores = '--ignore .git
    \ --ignore "deps/*"
    \ --ignore "_build/*"
    \ --ignore "node_modules/*"'
" By default ag will search from PWD
" But you may enable one of below line to use an arbitrary directory or,
" Using the magic word 'current-file-dir' to use current file base directory
" let g:ctrlp_ag_search_base = 'current-file-dir'
" let g:ctrlp_ag_search_base = 'app/controllers' " both relative and absolute path supported

" Ale Config
let g:ale_completion_enabled = 1
let g:ale_completion_max_suggestions = 5
let g:ale_completion_delay = 200


let g:ale_fix_on_save = 1
let g:ale_fixers = {
\  'javascript': ['prettier'],
\  'css': ['prettier'],
\}

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

" Which Key
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

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
Plug 'liuchengxu/vim-which-key'

" Style
Plug 'sickill/vim-monokai'

" Language support
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'mxw/vim-jsx'
Plug 'ianks/vim-tsx'
Plug 'hdima/python-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'styled-components/vim-styled-components'
Plug 'posva/vim-vue'

" Search
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lokikl/vim-ctrlp-ag'
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'rking/ag.vim'

" General
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'scooloose/nerdtree'

" Icons, must be the last install
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
call plug#end()
