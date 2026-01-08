" 設定

set autoread
set cursorline
set expandtab
set fenc=utf-8
set hidden
set nobackup
set noswapfile
set shiftwidth=2
set showcmd
set tabstop=2

" git commit のタイトルの自動改行を抑制
autocmd FileType gitcommit setlocal textwidth=0
