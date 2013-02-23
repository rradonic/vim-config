" basics

set nowrap
set autoindent
set laststatus=2
set shortmess+=I
set wildmode=longest,list
set scrolljump=-50
set clipboard=unnamedplus
set history=1000
set hidden
set ttimeoutlen=100
set iskeyword+=-

set incsearch
set nowrapscan

set foldmethod=indent
set foldlevel=1000

filetype plugin on
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

" keyboard shortcuts

let mapleader=","
let maplocalleader=";"

nnoremap Y y$
nnoremap <silent> <f3> qq<cr>
nnoremap <silent> <f4> @q<cr>
nnoremap <silent> <f9> :set hlsearch!<cr>
nnoremap <f4> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
nnoremap <f8> za
nnoremap <f12> :grep -ir 
nnoremap <leader>s /\c
nnoremap <leader>S ?\c
nnoremap <leader>r :%s:\v::gc<left><left><left><left>
vnoremap <leader>r :s:\v::gc<left><left><left><left>

" hjkl doesn't make sense on colemak, so use if for other stuff

noremap <silent> h b
noremap <silent> h b
noremap <silent> l w
noremap <silent> l w

nnoremap <silent> j 5<C-y>
nnoremap <silent> k 5<C-e>

" default indentation

set expandtab
set shiftwidth=2
set softtabstop=2

" visual stuff

set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
autocmd BufEnter * :set list

let g:loaded_matchparen=1 
autocmd BufEnter * :syntax sync fromstart
set fillchars=vert:\ ,fold:-

hi cursorline cterm=none
hi tabline cterm=none
hi todo ctermbg=0 ctermfg=4
"hi visual ctermbg=236
"hi visualnos ctermbg=236 cterm=none
hi statusline ctermbg=7 ctermfg=0 cterm=none
hi statuslinenc ctermbg=7 ctermfg=0 cterm=bold

hi diffadd ctermbg=2 ctermfg=15
hi diffchange ctermbg=5 ctermfg=15
hi diffdelete ctermbg=1 ctermfg=1
hi difftext ctermbg=6 ctermfg=15
"hi folded ctermfg=0
"hi foldcolumn ctermfg=0

call pathogen#infect()
