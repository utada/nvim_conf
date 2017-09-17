
" set paste causes pasted contents to be indented #3566
" https://github.com/neovim/neovim/issues/3566
set paste
" set mouse=r
set wrap
set noautoindent
set modeline
set cursorline
set hlsearch
set ttyfast
set lazyredraw
" set expandtab
" set softtabstop=2
" set tabstop=2
" set shiftwidth=2
set autochdir

" auto-detect encoding
set fileencodings=iso-2022-jp,utf-8,euc-jp,ucs-2le,ucs-2,cp932

" status line
set statusline=%t\ %m%r%h%w[%Y][%{&fenc}][%{&ff}]%=%c,%l%11p%%
set laststatus=2

"" dein
let s:dein_path = expand('~/dein')
if &compatible
  set nocompatible
endif
set runtimepath+=~/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_path)
  call dein#begin(s:dein_path)

  call dein#add('Shougo/neocomplete.vim')
  call dein#add('hashivim/vim-terraform')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

"" jinja syntax hilighting
au BufRead,BufNewFile *.jinja set filetype=yaml

