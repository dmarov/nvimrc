syntax on
set termguicolors
set hidden
let g:rehash256 = 1
set foldmethod=indent
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set autoread
set updatetime=250
set noswapfile
set number
set relativenumber
set nowrap
set cursorline
set colorcolumn=80
set listchars=tab:▸\ ,eol:¬,trail:·
set fillchars+=vert:\ 
set list
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set exrc

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set scrolloff=10

" plug
call plug#begin('~/.config/nvim/plugged')
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'tpope/vim-fugitive' #for git
Plug 'ervandew/supertab' " completion on tab
"Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/nerdcommenter'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'terryma/vim-multiple-cursors'
"Plug 'matze/vim-move'
"Plug 'tpope/vim-surround' " to modify brackets
Plug 'tpope/vim-commentary' " gcc comment
"Plug 'MattesGroeger/vim-bookmarks'
Plug 'Raimondi/delimitMate' " auto brackets, quotes
"Plug 'wting/rust.vim'
"Plug 'equalsraf/neovim-gui-shim'
"Plug 'Ioannis-Kapoulas/vim-autoprefixer'
Plug 'sheerun/vim-polyglot' " language packs
"Plug 'eugen0329/vim-esearch'
"Plug 'neomake/neomake'
"Plug 'easymotion/vim-easymotion'
"Plug 'gregsexton/matchtag'
Plug 'dyng/ctrlsf.vim'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'mhinz/vim-signify'
"Plug 'Yggdroot/indentLine'
"Plug 'KabbAmine/gulp-vim'
"Plug 'godlygeek/tabular'
"Plug 'Shougo/echodoc.vim'
"Plug 'Shougo/denite.nvim'
"Plug 'jsfaint/gen_tags.vim'
"Plug 'Rican7/php-doc-modded'
"Plug 'janko-m/vim-test'

"Plug 'Shougo/unite.vim'
"Plug 'Shougo/vimproc.vim', {'do' : 'gmake'}
" Plug 'm2mdas/phpcomplete-extended'
" Plug 'maralla/completor.vim'
Plug 'Shougo/deoplete.nvim', { 'tag': '4.0-serial', 'do': ':UpdateRemotePlugins' }

Plug 'joshdick/onedark.vim'
Plug 'Yggdroot/duoduo'
Plug 'Alvarocz/vim-northpole'
Plug 'ajmwagar/vim-deus'
Plug 'dracula/vim'
"Plug 'preocanin/greenwint'
"Plug 'vim-scripts/greenvision'
"Plug 'jakwings/vim-colors'

call plug#end()
" /plug

colorscheme onedark
" colorscheme greenvision
"colorscheme moody
" colorscheme deus
" airline
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

set laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='raven'
" /airline

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,tpl,css,scss EmmetInstall
" /emmet

" nerdtree
let NERDTreeWinSize = 25
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
let NERDTreeMapUpdir = 'h'
let NERDTreeMapChangeRoot = 'l'
" /nerdtree

" nerdtree-tabs
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_focus_on_files = 1
" bugfix
" let g:nerdtree_tabs_synchronize_view = 0
" /nerdtree-tabs

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" /nerdtree-git-plugin

" vim-move
let g:move_key_modifier = 'C'
" /vim-move


" neomake
"autocmd! BufWritePost * Neomake
"let g:neomake_html_enabled_makers = []
"let g:neomake_rust_enabled_makers = []
" /neomake

" deoplete
let g:deoplete#enable_at_startup = 1
function Multiple_cursors_before()
    let g:deoplete#disable_auto_complete = 1
endfunction
function Multiple_cursors_after()
    let g:deoplete#disable_auto_complete = 0
endfunction
" /deoplete

" settings for tpl files
au BufReadPost *.tpl set ft=html
au BufReadPost *.tpl set syntax=php
au BufRead * retab
" /settings for tpl files

" ultisnips
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" /ultisnips

" indentLine
let g:indentLine_char = '·'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = "#525965"
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
" /indentLine

" LSP
"let g:LanguageClient_autoStart = 1

"let g:LanguageClient_serverCommands = {
"\ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"\ }

"nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
"nnoremap <silent> GD :call LanguageClient_textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
" /LSP

" gen_tags
"let g:gen_tags#ctags_bin = 'exctags'
"let g:gen_tags#ctags_auto_gen = 0
"let g:gen_tags#gtags_auto_gen = 0
" /gen_tags

" /php-doc-modded
"inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
"nnoremap <C-P> :call PhpDocSingle()<CR> 
"vnoremap <C-P> :call PhpDocRange()<CR> 
" /php-doc-modded

" vim-test
"nmap <silent> <leader>t :TestNearest<CR>
"nmap <silent> <leader>T :TestFile<CR>
"nmap <silent> <leader>a :TestSuite<CR>
"nmap <silent> <leader>l :TestLast<CR>
"nmap <silent> <leader>g :TestVisit<CR>
" /vim-test

" ctrlsf
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_selected_line_hl = 'op'
let g:ctrlsf_winsize = '100%'
" /ctrlsf

" custom mappings

:nmap echo a<?= $; ?><Esc>2ba
:nmap code a<?php  ?><Esc>1bhi
" autocmd FileType phptemplate nmap <buffer> echo a<?= $; ?><Esc>2ba
:nmap <Tab> <C-w>w

for i in range(1, 8)
    execute "nmap \<A-".i."> ".i."gt"
endfor

:nmap <A-9> :tablast<CR>

:nmap <Space> :NERDTreeTabsToggle<CR>
" /custom mappings

" autocmd FileType tpl phptemplate
"let g:phpcomplete_index_composer_command = 'composer'
