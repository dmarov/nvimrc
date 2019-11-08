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
set backupcopy=yes
set nowritebackup
set smartindent
set scrolloff=10
set updatetime=100

" plug
call plug#begin('~/.config/nvim/plugged')
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'terryma/vim-multiple-cursors'
Plug 'matze/vim-move'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Raimondi/delimitMate'
Plug 'gregsexton/matchtag'
Plug 'dyng/ctrlsf.vim'
Plug 'mhinz/vim-signify'
Plug 'godlygeek/tabular'
Plug 'jsfaint/gen_tags.vim'
Plug 'janko-m/vim-test'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'joshdick/onedark.vim'
"Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }
call plug#end()
" /plug

colorscheme onedark

" airline
set laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='raven'
" /airline
"
" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss EmmetInstall
" /emmet
"
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
let g:nerdtree_tabs_synchronize_view = 0
" /nerdtree-tabs
"
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


" deoplete
let g:deoplete#enable_at_startup = 1
function Multiple_cursors_before()
    let g:deoplete#disable_auto_complete = 1
endfunction
function Multiple_cursors_after()
    let g:deoplete#disable_auto_complete = 0
endfunction
" /deoplete

" vim-test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

let test#strategy = {
  \ 'nearest': 'neovim',
  \ 'file':    'neovim',
  \}
" /vim-test

" ctrlsf
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_selected_line_hl = 'op'
let g:ctrlsf_winsize = '100%'
" ctrlsf

" /custom mappings
nmap <Tab> <C-w>w
nmap <Space> :NERDTreeTabsToggle<CR>
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
"" /custom mappings
