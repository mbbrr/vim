" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim72/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" Para recargar automáticamente el .vimrc cuando hay cambios
autocmd! bufwritepost .vimrc source %

set nobackup
set nohlsearch

execute pathogen#infect()
"call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on
set autoindent
set omnifunc=syntaxcomplete#Complete
" set smartindent

set mouse=a

" Ajustes de sangrado
set tabstop=4 shiftwidth=4 " expandtab

" Wildmenu, para el autocompletado de nombres de archivo
set wildmenu

" Apariencia, etc.
set background=dark

" Muestra la posición del cursor
set ruler

" Muestra la barra de estado de abajo
set ls=2

" Número de línea en el lateral
set number

" Ajustes de Taglist
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 1

" --------------------
" MiniBufExpl
" --------------------
"let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)
let g:miniBufExplModSelTarget = 1 " If you use other explorers like TagList you can (As of 6.2.8) set it at 1:
"let g:miniBufExplUseSingleClick = 1 " If you would like to single click on tabs rather than double clicking on them to goto the selected buffer.
let g:miniBufExplMaxSize = 1 " <max lines: defualt 0> setting this to 0 will mean the window gets as big as needed to fit all your buffers.
""let g:miniBufExplForceSyntaxEnable = 1 " There is a Vim bug that can cause "buffers to show up without their highlighting. The following setting will "cause MBE to
""let g:miniBufExplorerMoreThanOne = 1 " Setting this to 0 will cause the MBE "window to be loaded even
""for buffers that have NOT CHANGED and are NOT VISIBLE.
"highlight MBENormal guibg=LightGray guifg=DarkGray
"" for buffers that HAVE CHANGED and are NOT VISIBLE
"highlight MBEChanged guibg=Red guifg=DarkRed
"" buffers that have NOT CHANGED and are VISIBLE
"highlight MBEVisibleNormal term=bold cterm=bold gui=bold guibg=Gray guifg=Black
"" buffers that have CHANGED and are VISIBLE
"highlight MBEVisibleChanged term=bold cterm=bold gui=bold guibg=DarkRed guifg=Black
"

"
"	ATAJOS DE TECLADO
"

" Tecla "leader"
let mapleader=","

" Mappings to access buffers (don't use "\p" because a
" " delay before pressing "p" would accidentally paste).
" " ,l       : list buffers
" " ,b ,f ,g : go back/forward/last-used
" " ,1 ,2 ,3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Movimiento entre pestañas
map <Leader>k <Esc>:tabnext<CR>
map <Leader>j <Esc>:tabprevious<CR>

" Movimiento entre ventanas
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap <C-h> <Esc><C-w>h
imap <C-j> <Esc><C-w>j
imap <C-k> <Esc><C-w>k
imap <C-l> <Esc><C-w>l

" OmniCompletion
imap <C-@> <C-x><C-o>

" Paneles con plugins para desarrollo
nnoremap <silent> <F7> :NERDTreeToggle<CR>
"nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F8> :TagbarToggle<CR>
map <F9> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"set foldmethod=manual
set foldmethod=syntax
set foldnestmax=1

" Sintaxis para jQuery
" au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
