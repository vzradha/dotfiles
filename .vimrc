"Leader
let mapleader=","

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

"""""""""Utilites
Plugin 'kien/ctrlp.vim' "fuzzy find files
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' "Git repo
Plugin 'tpope/vim-commentary' "comment/Uncomment lines with gcc or gc in visual mode
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate' "Plugin to use snippets
Plugin 'honza/vim-snippets'
" " plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
" " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
 Plugin 'flazz/vim-colorschemes'
 Plugin 'tpope/vim-rails'
 Plugin 'unite.vim'
 Plugin 'bling/vim-airline'
 Plugin 'mileszs/ack.vim'
 Plugin 'vim-ruby/vim-ruby'
 " Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdTree'
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" NerdTree shortcut
map <F2> :NERDTreeToggle

"Vimux aliases
"nmap <leader>vr :call VimuxRunCommand('ls')<cr> 
"nmap <leader>vq :VimuxCloseRunner<cr>

"Emmet customization
"let g:user_emmet_leader_key='<C-m>'
"let g:user_emmet_mode='a'

"Ack settings
set grepprg=ack

"Other settings
colorscheme railscasts
"airline color scheme
"let g:airline_theme= 'luna'
syntax on
set ruler
set number
set anti enc=utf-8
set guifont=Source\ Code\ Pro\ 14
set guioptions-=T " Removes top toolbar
set autoindent
set noswapfile
set autoread "detect when a file is changed

"Tab control
set noexpandtab "tabs ftw
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set clipboard=unnamed


"faster redrawing
set ttyfast

"Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

set magic "set magic on for regex
set ffs=unix
"set guioptions-=r " Removes right hand scroll bar
"set go-=L " Removes left hand scroll bar
"autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
":set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
"
"
""""""""""""""""""""""
"NERDTree settings
""""""""""""""""""""""
"let g:NERDTreeQuitOnOpen=0 "close NERD after opening a file
"
"
"map Ctrl+p plugin
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'


"CtrlP ignore pattersn
let g:ctrlp_custom_ignore ={
		\ 'dir': '\.git$\|node_module\|hg$',
		 \ 'file': '\.exe\|\.so'
		  \ }
"search nearest ancestor that contains .git .hg
let g:ctrlp_working_path_mode=2

