let mapleader=" "

set number " Show line number
syntax on " Highlight syntax
set ignorecase " Ignore case when searching
set smartcase " Smart case
set hlsearch " Highlight search results
set encoding=utf8 " Set utf8 as default encoding
set shiftwidth=4 " 1 tab = 4 spaces
set tabstop=4 
set wrap " Wrap lines
set history=500 " Set how many lines of history vim has to remember
set wildmenu " vim directives auto-complete
set relativenumber
set scrolloff=5
imap ii <c-[> " ii map to <Esc>

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


" Use the snazzy color scheme as default
colorscheme snazzy

" Use the wombat airline theme as default
let g:airline_theme='wombat'

" Block cursor everywhere,Line cursor only in insert mode  
let &t_EI = "\e[2 q"
let &t_SI = "\e[6 q"

