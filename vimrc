" vim config

set history=1000
set ruler     " Show the line and column number of the cursor position
set showcmd   " Show (partial) command in the last line of the screen

" 自動インデントモード（autoindent）
set noai

" 大文字小文字を区別しないで検索（ignorecase）
set ic

" visual
set nonumber
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

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,sjis

" https://qiita.com/Linda_pp/items/9e0c94eb82b18071db34
if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif

