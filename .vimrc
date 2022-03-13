let mapleader=" "

set number " Show line number
syntax on " Highlight syntax
set ignorecase " Ignore case when searching
set smartcase " Smart case
set hlsearch " Highlight search results
set encoding=utf8 " Set utf8 as default encoding
set shiftwidth=4 " 1 tab = 4 space
set tabstop=4 
set wrap " Wrap lines
set history=500 " Set how many lines of history vim has to remember
set wildmenu " vim directives auto-complete
set relativenumber
set scrolloff=5
set backspace=indent,eol,start "Better space
set updatetime=500

imap ii <C-[>
noremap <leader>q :sh<CR>
map Q :q<CR>
map W :w<CR>

noremap = nzz
noremap - Nzz
noremap <leader><CR> :nohlsearch<CR>

" <C-v> has been used for paste in powershell
map <leader>v <C-v>

" Split
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

noremap J 5j
noremap K 5k
noremap H 7h
noremap L 7l

call plug#begin('$VIM/plug-vim/')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'preservim/nerdtree'
Plug 'OmniSharp/omnisharp-vim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" Snazzy
colorscheme snazzy " Use the snazzy color scheme as default

" AirLine
let g:airline_theme='wombat' " Use the wombat airline theme as default

" NerdTree
map nt :NERDTreeToggle<CR>
let NERDTreeChDirMode=3 " always change the current working directory

" Ale
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_sign_info = '·'
let g:ale_sign_style_error = '·'
let g:ale_sign_style_warning = '·'

" OmniSharp
"let g:OmniSharp_selector_ui = ''     
"let g:OmniSharp_highlighting = 3
"let g:OmniSharp_popup_position = 'peek'



" Block cursor everywhere,Line cursor only in insert mode  
let &t_EI = "\e[2 q"
let &t_SI = "\e[6 q"

"augroup omnisharp_commands
"	autocmd!
"	autocmd CursorHold *.cs OmniSharpTypeLookup
"	autocmd FileType cs nmap <leader> gd <Plug>(omnisharp_go_to_definition)
"augroup END

