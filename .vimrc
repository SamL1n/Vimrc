let mapleader=" "

" Show line number
set number

" Highlight syntax
syntax on

" Ignore case when searching
set ignorecase 

" Smart case
set smartcase

" Highlight search results
set hlsearch

" Set utf8 as default encoding
set encoding=utf8

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4 

" Wrap lines
set wrap

" Set how many lines of history vim has to remember
set history=500

" vim directives auto-complete
set wildmenu

set relativenumber

set scrolloff=5

" ii map to <Esc>
imap ii <c-[>

" Split
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

call plug#begin('$VIM/plug-vim/')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'preservim/nerdtree'

call plug#end()


" Use the snazzy color scheme
colorscheme snazzy

" Use the wombat airline theme
let g:airline_theme='wombat'

" Block cursor everywhere,Line cursor only in insert mode  
let &t_EI = "\e[2 q"
let &t_SI = "\e[6 q"

