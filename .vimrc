" Show line number
set number

" Highlight syntax
syntax on

" Ignore case when searching
set ignorecase 

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

" Remap vim 0 to first non-block character
map 0 ^

" Block cursor everywhere,Line cursor only in insert mode  
let &t_EI = "\e[2 q"
let &t_SI = "\e[6 q"

