" basics

set nocp
set nowrap
set shortmess+=I
set hidden
"set mouse=ar
set ttimeoutlen=100
set incsearch
set nowrapscan
set ignorecase
set smartcase
set laststatus=2
set wildmode=longest,list
set scrolljump=-50
set clipboard=unnamedplus

filetype plugin on
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.
let mapleader=","

" keyboard shortcuts

nnoremap <silent> <f3> qq<cr>
nnoremap <silent> <f4> @q<cr>
nnoremap <silent> <f9> :set hlsearch!<cr>
nnoremap <f12> :grep -ir 
nnoremap <leader>* :grep -ir '<cword>' 
nnoremap <leader>s /
nnoremap <leader>S ?
nnoremap <leader>r :%s:\v::gc<left><left><left><left>
vnoremap <leader>r :s:\v::gc<left><left><left><left>

" hjkl doesn't make sense on colemak, so disable it
nnoremap <silent> h <nop>
nnoremap <silent> j <nop>
nnoremap <silent> k <nop>
nnoremap <silent> l <nop>

" default indentation

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" indentation for different file types

autocmd filetype html setlocal shiftwidth=2 softtabstop=2
autocmd filetype haml setlocal shiftwidth=2 softtabstop=2
autocmd filetype ruby setlocal shiftwidth=2 softtabstop=2
autocmd filetype c setlocal shiftwidth=4 softtabstop=4
autocmd filetype cpp setlocal shiftwidth=4 softtabstop=4
autocmd filetype java setlocal shiftwidth=4 softtabstop=4
autocmd filetype javascript setlocal shiftwidth=2 softtabstop=2

" visual stuff

autocmd BufEnter * :syntax sync fromstart

set fillchars=vert:\ ,fold:-

hi cursorline cterm=none
"hi search ctermbg=3 ctermfg=0
"hi todo ctermbg=0 ctermfg=4
"hi visual ctermbg=236
"hi visualnos ctermbg=236 cterm=none
hi statusline ctermbg=7 ctermfg=0 cterm=none
hi statuslinenc ctermbg=7 ctermfg=0 cterm=bold
"hi matchparen ctermbg=6

hi diffadd ctermbg=2 ctermfg=15
hi diffchange ctermbg=5 ctermfg=15
hi diffdelete ctermbg=1 ctermfg=1
hi difftext ctermbg=6 ctermfg=15
"hi folded ctermfg=0
"hi foldcolumn ctermfg=0

"highlight overlength ctermbg=52 ctermfg=255
"match overlength /\%101v.\+/

call pathogen#infect()

map <F8> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
