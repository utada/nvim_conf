
set mouse=r
set paste
set wrap
set noautoindent
set modeline
set cursorline
set hlsearch
set ttyfast
set lazyredraw
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

" auto-detect encoding
set fileencodings=iso-2022-jp,utf-8,euc-jp,ucs-2le,ucs-2,cp932

" status line
set statusline=%t\ %m%r%h%w[%Y][%{&fenc}][%{&ff}]%=%c,%l%11p%%
set laststatus=2

"syntax enable
"
"""""" NeoBundle
"" Note: Skip initialization for vim-tiny or vim-small.
"set nocompatible
"if !1 | finish | endif
"
"" neobundle settings {{{
"if has('vim_starting')
"  set nocompatible
"  " neobundle をインストールしていない場合は自動インストール
"  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
"    echo "install neobundle..."
"    " vim からコマンド呼び出しているだけ neobundle.vim のクローン
"    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
"  endif
"  " runtimepath の追加は必須
"  set runtimepath+=~/.vim/bundle/neobundle.vim/
"endif
"
"" neobundle#begin - neobundle#end の間に導入するプラグインを記載します。
"call neobundle#begin(expand('~/.vim/bundle'))
"let g:neobundle_default_git_protocol='https'
"
"" Let NeoBundle manage NeoBundle
"" Required:
"NeoBundleFetch 'Shougo/neobundle.vim'
"
"NeoBundle 'scrooloose/syntastic'
"NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
""NeoBundle 'pangloss/vim-javascript'
"if v:version >= 704
"    NeoBundle 'Shougo/neocomplete.vim'
"endif
"NeoBundle 'vim-scripts/tagbar-phpctags', {
"  \   'build' : {
"  \     'others' : 'chmod +x bin/phpctags',
"  \   },
"  \ }
"let g:tagbar_type_javascript = {
"    \ 'ctagsbin' : '/home/utada/jsctags/node_modules/.bin/jsctags'
"\ }
"NeoBundle 'majutsushi/tagbar'
"NeoBundle 'gnupg'
"NeoBundle 'marijnh/tern_for_vim'
"
"call neobundle#end()
"
"" Required:
"filetype plugin indent on
"
"" If there are uninstalled bundles found on startup,
"" this will conveniently prompt you to install them.
"NeoBundleCheck
"
"" solarized
""se t_Co=16 " in Ubuntu
""let g:solarized_termcolors=16
""set background=dark
""set background=light
""colorscheme solarized
""let g:solarized_termcolors=256
"
""set guitablabel=%t
""set guitablabel=%N:%M%t
"" custom tab pages line with tab numbers - modified version of script by JonSkanes
"" http://vim.wikia.com/index.php?title=Show_tab_number_in_your_tab_line&oldid=29439
"set tabline=%!MyTabLine()
"
"function MyTabLine()
"  let s = '' " complete tabline goes here
"  " loop through each tab page
"  for t in range(tabpagenr('$'))
"    " select the highlighting for the buffer names
"    if t + 1 == tabpagenr()
"      let s .= '%#TabLineSel#'
"    else
"      let s .= '%#TabLine#'
"    endif
"    let s .= ' ['
"    " set the tab page number (for mouse clicks)
"    let s .= '%' . (t + 1) . 'T'
"    " set page number string
"    let s .=  t + 1 . ']' 
"    " get buffer names and statuses
"    let n = ''  "temp string for buffer names while we loop and check buftype
"    let m = 0 " &modified counter
"    let bc = len(tabpagebuflist(t + 1))  "counter to avoid last ','
"    " loop through each buffer in a tab
"    for b in tabpagebuflist(t + 1)
"      " buffer types: quickfix gets a [Q], help gets [H]{base fname}
"      if getbufvar( b, "&buftype" ) == 'help'
"        let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
"      elseif getbufvar( b, "&buftype" ) == 'quickfix' 
"        let n .= '[Q]'
"      elseif bufname(b) == ''
"        let n .= '[No Name]'
"      else
"        "let n .= pathshorten(bufname(b))
"        "let n .= bufname(b)
"        let n .= fnamemodify( bufname(b), ':t' )
"      endif
"      " check and ++ tab's &modified count
"      if getbufvar( b, "&modified" )
"        let m += 1
"      endif
"      " no final ' ' added...formatting looks better done later
"      if bc > 1
"        let n .= ','
"      endif
"      let bc -= 1
"    endfor
"    " add modified label [+] where n pages in tab are modified
"    if m > 0
"      "let s .= '[' . m . '+]'
"      let s.= '[+]'
"    endif
"    let s .= ' '
"    " add buffer names
"    let s .= n
"    " switch to no underlining and add final space to buffer list
"    "let s .= '%#TabLineSel#' . ' '
"    let s .= ' '
"  endfor
"  " after the last tab fill with TabLineFill and reset tab page nr
"  let s .= '%#TabLineFill#%T'
"  return s
"endfunction
"
""""""" syntastic
""let g:syntastic_mode_map = {
""   \ 'mode': 'active',
""   \ 'active_filetypes': [], 
""   \ 'passive_filetypes': ['html', 'javascript'] }
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list = 2
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['gjslint']
""let g:syntastic_javascript_checkers = ['eslint']
""let g:syntastic_javascript_gjslint_args=' --nojsdoc --max_line_length 500'
""let g:syntastic_php_checkers = ['php', 'phpcs']
"
""""""" tagbar
"nmap <F8> :TagbarToggle<CR>
"
"""""" neocomplate
"if neobundle#is_installed('neocomplete')
"    " Disable AutoComplPop.
"    let g:acp_enableAtStartup = 0
"    " Use neocomplete.
"    let g:neocomplete#enable_at_startup = 1
"    " Use smartcase.
"    let g:neocomplete#enable_smart_case = 1
"    " Set minimum syntax keyword length.
"    let g:neocomplete#sources#syntax#min_keyword_length = 3
"    let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
"    " Define dictionary.
"    let g:neocomplete#sources#dictionary#dictionaries = {
"        \ 'default' : '',
"        \ 'vimshell' : $HOME.'/.vimshell_hist',
"        \ 'scheme' : $HOME.'/.gosh_completions'
"            \ }
"
"    " Define keyword.
"    if !exists('g:neocomplete#keyword_patterns')
"        let g:neocomplete#keyword_patterns = {}
"    endif
"    let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
"    " Plugin key-mappings.
"    inoremap <expr><C-g>     neocomplete#undo_completion()
"    inoremap <expr><C-l>     neocomplete#complete_common_string()
"
"    " Recommended key-mappings.
"    " <CR>: close popup and save indent.
"    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"    function! s:my_cr_function()
"      return neocomplete#close_popup() . "\<CR>"
"      " For no inserting <CR> key.
"      "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"    endfunction
"    " <TAB>: completion.
"    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"    " <C-h>, <BS>: close popup and delete backword char.
"    inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"    inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"    inoremap <expr><C-y>  neocomplete#close_popup()
"    inoremap <expr><C-e>  neocomplete#cancel_popup()
"    " Close popup by <Space>.
"    "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
"
"    " For cursor moving in insert mode(Not recommended)
"    "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"    "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"    "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"    "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
"    " Or set this.
"    "let g:neocomplete#enable_cursor_hold_i = 1
"    " Or set this.
"    "let g:neocomplete#enable_insert_char_pre = 1
"
"    " AutoComplPop like behavior.
"    "let g:neocomplete#enable_auto_select = 1
"
"    " Shell like behavior(not recommended).
"    "set completeopt+=longest
"    "let g:neocomplete#enable_auto_select = 1
"    "let g:neocomplete#disable_auto_complete = 1
"    "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
"    " Enable omni completion.
"    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"    " Enable heavy omni completion.
"    if !exists('g:neocomplete#sources#omni#input_patterns')
"      let g:neocomplete#sources#omni#input_patterns = {}
"    endif
"    "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"    "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"    "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"    " For perlomni.vim setting.
"    " https://github.com/c9s/perlomni.vim
"    let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"endif
"""""""" neocomplate end
"
"""""" for Mac
"if has("mac")
"    autocmd filetype crontab setlocal nobackup nowritebackup
"    set t_Co=256
"
"    " solarized
"    "set background=dark
"    set background=light
"    "colorscheme solarized
"    "let g:solarized_termcolors=256
"endif
"""""" for Mac end
