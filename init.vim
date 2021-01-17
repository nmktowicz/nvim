call plug#begin('~/AppData/Local/nvim/plugged')
" Install fzf, Ag and ctags
" Navigation and Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Better statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autocomplete server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Rust support
Plug 'rust-lang/rust.vim'

" Javascript/Typescript support
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim' 
Plug 'maxmellon/vim-jsx-pretty' 
Plug 'jparise/vim-graphql'   

" Themes
Plug 'tomasiser/vim-code-dark'
call plug#end()

" Spaces & Tabs
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " number of spaces to use for autoindent
set expandtab           " tabs are space
set autoindent
set copyindent          " copy indent from the previous line

" UI Config
set hidden
set number              " show line number
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching brace
set laststatus=2        " window will always have a status line
set nobackup
set noswapfile
syntax on
set termguicolors
set number
set background=dark
colorscheme codedark

" Turn off search highlights
nnoremap <leader><space> :nohlsearch<CR>

" Coc extensions
let g:coc_global_extensions = [ 'coc-tsserver', 'coc-tslint-plugin', 'coc-rust-analyzer', 'coc-rls' ]

" Lightline
let g:lightline = { 'colorscheme': 'codedark' }
