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
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

syntax enable
set autoindent
set tabstop=4
set softtabstop=4 "len of tab when editing
set shiftwidth=4
set expandtab "pressing tab inserts spaces
set cursorline "highlight current line
set showmatch "highlight matching brackets
set incsearch "search as characters are entered
set hlsearch "highlight search matches
set number "set line numbers"

"turn of hlsearch once you move on

nnoremap <leader><space> :nohlsearch<CR> "remaps space to nohlsearch

call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()
