call pathogen#infect()

set fencs=utf-8,vim,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fenc=utf-8
set enc=utf-8

set iminsert=0 imsearch=0

if has('multi_byte_ime')
    hi Cursor guifg=bg guibg=Orange gui=NONE
    hi CursorIM guifg=NONE guibg=Skyblue gui=NONE
    set iminsert=0 imsearch=0
endi

set expandtab
set shiftwidth=4
" set softtabstop=4
set tabstop=4

" colorschema on
syntax on

" syntax highlighting
set background=dark
set t_Co=256

set nobackup
set ignorecase 
set gdefault
set nu!
set ai!

" enable backspace
set backspace=2

" set colorscheme
" [Github] https://github.com/nanotech/jellybeans.vim.git
colorscheme jellybeans

" autocomplete load ctag file
set tags=./tags,tags

set ruler

" search highlight 
set hlsearch
set incsearch

" color inline
set cursorline

" indent
set ai
set cin

" neocomplcache
" [Github] https://github.com/Shougo/neocomplcache.git
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" autocomplete 
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css,sass,scss set omnifunc=csscomplete#CompleteCSS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

autocmd BufNewFile,BufRead *.scss set ft=scss
autocmd BufWritePost *.coffee silent CoffeeMake! -b | cwindow

" PDV standalone
" This is a standalone version of Tobias Schlitt's famous phpDocumentor for Vim plugin
" [Github] https://github.com/lessmind/pdv-standalone.git
nnoremap <C-K> :call PhpDocSingle()<CR>
vnoremap <C-K> :call PhpDocRange()<CR>

let g:pdv_cfg_Version = '0.05'
let g:pdv_cfg_Author = 'yuchih <yuchih@2be.com.tw>'
let g:pdv_cfg_Copyright = 'Copyright 2011 by yuchih <yuchih@2be.com.tw>'

if has("autocmd")
    filetype on
    filetype plugin on
    filetype plugin indent on
endif

mapclear

" tabshift
vmap <tab> >gv
vmap <s-tab> <gv
nmap <tab> v>
nmap <s-tab> v<

nmap <C-left> gT
nmap <C-right> gt
imap <C-left> <esc>gT
imap <C-right> <esc>gt
vmap <C-left> <esc>gT
vmap <C-right> <esc>gt

" nerdtree keymap
imap <F2> <esc>:NERDTreeToggle<CR>
vmap <F2> <esc>:NERDTreeToggle<CR>
nmap <F2> :NERDTreeToggle<CR>

" tagbar for tag complete 
nmap <F3> :TagbarToggle<CR><C-w>p
vmap <F3> <esc>:TagbarToggle<CR><C-w>p
imap <F3> <esc>:TagbarToggle<CR><C-w>p

" prev/next tab
nmap <C-left> gT
nmap <C-right> gt
imap <C-left> <esc>gT
imap <C-right> <esc>gt
vmap <C-left> <esc>gT
vmap <C-right> <esc>gt

" code/paste from paste note 
nmap <F7> :set paste!<BAR>set paste?<CR>
imap <F7> <esc>:set paste!<BAR>set paste?<CR>i
vmap <F7> <esc>:set paste!<BAR>set paste?<CR>

" prev/next all mark
nmap <S-F8> <Leader>?
nmap <S-F9> <Leader>/

" prev/next current mark
nmap <F8> <Leader>#
nmap <F9> <Leader>*
