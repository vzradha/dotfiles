set enc=utf-8
set fileencoding=utf-8
set t_Co=256
set background=dark
let mapleader=","
set nocompatible              
set wildmenu
set path+=**
filetype off                  

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 Plugin 'VundleVim/Vundle.vim'

"============Utilites===================
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'junegunn/fzf.vim'
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' "Git repo
Plugin 'tpope/vim-commentary' "comment/Uncomment lines with gcc or gc in visual mode
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate' "Plugin to use snippets
"Plugin 'honza/vim-snippets'
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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'
"Plugin 'mattn/emmet-vim'
Plugin 'stephpy/vim-yaml'
Plugin 'elzr/vim-json'
Plugin 'jiangmiao/auto-pairs'
Plugin 'SirVer/ultisnips'
Plugin 'm-kat/aws-vim'
Plugin 'hashivim/vim-terraform'
Plugin 'andviro/flake8-vim'
Plugin 'Yggdroot/indentLine' 
Plugin 'scrooloose/syntastic'
"Plugin 'avakhov/vim-yaml'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'fatih/vim-go'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'tmhedberg/simpylfold' "Code folding for python
Plugin 'jgerry/terraform-vim-folding' "Terraform code folding
Plugin 'towolf/vim-helm'
Plugin 'matze/vim-move' "moving lines within the code
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
filetype plugin on
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv        = 1
let g:netrw_keepdir = 0
map <C-E> :Lexplore<CR>
"
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
"Customization for vim-move
let g:move_key_modifier = 'C'
"
"NerdTree settings
"map <F2> :NERDTreeToggle<CR>
"let NERDTreeIgnore=['.DS_Store']
"let NERDTreeShowBookmarks=0         "show bookmarks on startup
"let NERDTreeHighlightCursorline=1   "Highlight the selected entry in the tree
"let NERDTreeShowLineNumbers=0
"let NERDTreeMinimalUI=1

"FZF settings
nnoremap <leader>pf :Files<CR>
nnoremap <leader>pg :GFiles<CR>
inoremap <leader>pl <Esc><Esc>:BLines!<CR>

"Get the 2-space YAML as the default when hit carriage return after the colon
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


"Filetype set for *.tf 
au BufRead,BufNewFile *.tf setlocal filetype=terraform

"Vimux aliases
nmap <leader>vr :call VimuxRunCommand('ls')<cr> 
nmap <leader>vq :VimuxCloseRunner<cr>
nmap <leader>vp :VimuxPromptCommand<cr>

"Emmet customization
"let g:user_emmet_leader_key='<C-m>'
"let g:user_emmet_mode='a'


"Other settings
"colorscheme deus
colorscheme gruvbox

"airline color scheme
let g:airline_theme= 'papercolor'
"let g:airline_theme= 'luna'
let g:airline#extensions#tabline#enabled = 1
syntax on
set ruler
set number relativenumber
set anti enc=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline\ 15
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

set pastetoggle=<leader>p       " paste mode: avoid auto indent, treat chars as literal

"Indent Lines config
let g:indentLine_setColors = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_bgcolor_term = 235 
let g:indentLine_setConceal = 2
"let g:indentLine_bgcolor_gui = '#FFFF5F'

"faster redrawing
set ttyfast

"backup and swap files 

set nobackup
set nowritebackup
set noswapfile

" Use a bar-shaped cursor for insert mode, even through tmux.
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"Searching
set ignorecase
set smartcase
set hlsearch
set incsearch
" clear highlight from search
nnoremap <leader><space> :noh<cr>
set magic "set magic on for regex
set ffs=unix
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
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
"nmap <silent> <leader>r :CtrlPBuffer<cr>
"let g:ctrlp_map='<leader>t'
"let g:ctrlp_dotfiles=1
"let g:ctrlp_working_path_mode = 'ra'
"
"
""CtrlP ignore pattersn
"let g:ctrlp_custom_ignore ={
"		\ 'dir': '\.git$\|node_module\|hg$',
"		 \ 'file': '\.exe\|\.so'
"		  \ }
""search nearest ancestor that contains .git .hg
"let g:ctrlp_working_path_mode=2
"
"" YouCompleteMeMappings
"" this is some arcane magic to allow cycling through the YCM options
""with the same key that opened it.
""See http://vim.wikia.com/wiki/Improve_completion_popup_menu for more info.
"let g:ycm_key_list_select_completion = ['<TAB>', '<C-j>']
"inoremap <expr> ycm_trigger_keyumvisible() ? "<C-j>" : ycm_trigger_key;
"" show autocomplete suggestions only when typing more than 2 characters
"let g:ycm_min_num_of_chars_for_completion = 2
"
"" show at most 20 completion candidates at a time (more than this would be
"" ridiculous, you'dress TAB so many times it would be better to simply type
"" " the entire thing lol)
"" " this applies only to the semantic-based engine
" let g:ycm_max_num_candidates = 20
"" this is the same as above, but only for the identifier-based engine
" let g:ycm_max_num_identifier_candidates = 10
""
"let g:SuperTabDefaultCompletionType = '<C-n>'
"let ycm_trigger_key = '<C-n>'
""let g:ycm_auto_trigger = 0
"let g:ycm_key_invoke_completion = ycm_trigger_key
"nnoremap <Leader>gt    :YcmCompleter GetType<CR>
"nnoremap <Leader>gdl    :YcmCompleter GoToDeclaration<CR>
"nnoremap <Leader>gdf    :YcmCompleter GoToDefinition<CR>
"nnoremap <Leader>g#     :YcmCompleter GoToReferences<CR>


" === Coc Settings
let g:coc_global_extensions = [
  \ 'coc-python',
  \ 'coc-emmet',
  \ 'coc-json',
  \ 'coc-sql',
  \ 'coc-tsserver',
  \ 'coc-pairs',
  \ 'coc-go',
  \ 'coc-yaml',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-cssmodules',
  \ 'coc-yank',
  \ 'coc-snippets'
  \ ]

" TextEdit might fail if hidden is not set.
set hidden


" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays andoor user experience.
" set updatetime=300
"
" " Don'tass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" otherlugin beforeutting this into your config.
inoremap <silent><expr> <TAB>
      \umvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB>umvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
"osition. Coc only does snippet and additional edit on confirm.
"" <cr> could be remapped by other vimlugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr>umvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  endif

  " Use `[g` and `]g` to navigate diagnostics
  " " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
  " nmap <silent> [g <Plug>(coc-diagnostic-prev)
  " nmap <silent> ]g <Plug>(coc-diagnostic-next)
  "
  " " GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rpr :CocSearch <C-R>=expand("<cword>")<CR><CR>
 
" Use K to show documentation inreview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jumplaceholder.
  "   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  "   augroup end
  "
  "   " Applying codeAction to the selected region.
  "   " Example: `<leader>aap` for currentaragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix toroblem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)
"
" " Map function and class text objects
" " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
 xmap if <Plug>(coc-funcobj-i)
 omap if <Plug>(coc-funcobj-i)
 xmap af <Plug>(coc-funcobj-a)
 omap af <Plug>(coc-funcobj-a)
 xmap ic <Plug>(coc-classobj-i)
 omap ic <Plug>(coc-classobj-i)
 xmap ac <Plug>(coc-classobj-a)
 omap ac <Plug>(coc-classobj-a)

 " Use CTRL-S for selections ranges.
 " Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
 "nmap <silent> <C-s> <Plug>(coc-range-select)
 "xmap <silent> <C-s> <Plug>(coc-range-select)
"
" " Add `:Format` command to format current buffer.
 command! -nargs=0 Format :call CocAction('format')
"
" " Add `:Fold` command to fold current buffer.
 command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
" " Add `:OR` command for organize imports of the current buffer.
 command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
" " Add (Neo)Vim's native statusline support.
" " NOTE: Please see `:h coc-status` for integrations with externallugins that
"rovide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
"" Mappings for CoCList
" Show all diagnostics.
 nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
 nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
 nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
 nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
 nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
 nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action forrevious item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" Ultisnips config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" Line number toggle between absoulte and relative
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu | endif
	autocmd BUfLeave,FocusLost,InsertEnter * if &nu | set nornu | endif
augroup END


