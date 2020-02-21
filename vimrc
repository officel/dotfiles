" vim config

set history=1000
set ruler     " Show the line and column number of the cursor position
set showcmd   " Show (partial) command in the last line of the screen

set noai

" visual
set number
" set list      " Show tabs as CTRL-I is displayed

" search
set hlsearch
set incsearch
set wildmenu
set wildmode=list:full,full

augroup noo
  autocmd!
  autocmd FileType * setlocal tw=0
  " 自動改行を抑制
  autocmd FileType * setlocal fo-=t
  autocmd FileType * setlocal fo-=c
  " コメントスタイルの自動挿入を抑制
  autocmd FileType * setlocal fo-=r
  autocmd FileType * setlocal fo-=o
augroup END

