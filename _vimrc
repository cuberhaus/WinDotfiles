"   ____       _     ____
"  |  _ \ ___ | |   / ___|
"  | |_) / _ \| |  | |
"  |  __/ (_) | |  | |___
"  |_|   \___/|_|   \____|
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"    -> EXTENDED
"    -> FILETYPES
"    -> PLUGINS
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"" Requires YCM install



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('unix') || has('macunix')
    " Clean-up
    set undodir=$XDG_DATA_HOME/vim/undo
    set directory=$XDG_DATA_HOME/vim/swap
    set backupdir=$XDG_DATA_HOME/vim/backup
    set viewdir=$XDG_DATA_HOME/vim/view
    set viminfo+='1000,n$XDG_DATA_HOME/vim/viminfo
    if !has('nvim')
        set viminfo+=~/.vim/viminfo
    endif
endif
"set runtimepath=$XDG_CONFIG_HOME/vim,$VIMRUNTIME,$XDG_CONFIG_HOME/vim/after
" Launch without anything: vim --clean
" Sets how many lines of history VIM has to remember
set history=500

" Sets default yank register to same as linux system
" Install vim-gtk
if has('unix') || has('macunix')
    set clipboard=unnamedplus
endif

if has('win32')
    set clipboard=unnamed
endif
" Enable filetype plugins
filetype plugin indent on
" Same as this 3 commands together: filetype on | filetype plugin on | filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
nnoremap <SPACE> <Nop>
let mapleader=" "

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
"Fa que el escape sigui instantani
set timeoutlen=1000 ttimeoutlen=0

" Número relatiu a la teva posició en la barra de l'esquerra
:set number relativenumber

"Activar sintàxis de programació
:syntax on

"activa suport de mouse
:set mouse=a

" Disable auto comments
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Si plug.vim no existeix ho instala
if has('unix') || has('macunix')
  if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
endif
" vim repeat cs'" to change surround from ' to "
" " ysiw" to add " to a word
" " ds" to remove surround
" tabular comes before vim markdown
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" Plugins, make sure you use single quotes
call plug#begin()
Plug 'lambdalisue/suda.vim'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'tpope/vim-repeat'
Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Chiel92/vim-autoformat'
Plug 'airblade/vim-gitgutter'
Plug 'amix/vim-zenroom2'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/goyo.vim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'preservim/nerdtree'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'ycm-core/YouCompleteMe'
Plug 'ap/vim-css-color'
Plug 'joshdick/onedark.vim'
call plug#end()
"Acaben els plugins
"Configuracions del plugin YouCompleteMe
let g:ycm_confirm_extra_conf = 0 "Disables prompting for script every time
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_args = ['-log=verbose', '-pretty']

if has('unix')
    let g:ycm_clangd_binary_path = exepath("clangd")
endif
if has('macunix')
    let g:ycm_clangd_binary_path = exepath("clangd")
endif

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_add_preview_to_completeopt = 0

let g:suda_smart_edit = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 4 lines to the cursor - when moving vertically using j/k
set so=4

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
"This one is the one that works
set belloff=all

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" Add a bit extra margin to the left
set foldcolumn=1

" Change cursor to a vertical thin line while in insert mode and underscore while replacing
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
\ if v:insertmode == 'i' |
\   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Enable syntax highlighting
syntax enable

" Changes current directory for new files
set autochdir

set encoding=utf-8
set fileencoding=utf-8

" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Tema
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif
"autocmd vimenter * colorscheme gruvbox
colorscheme onedark
" fixes glitch? in colors when using vim with tmux
set background=dark
set t_Co=256

" This is what sets vim to use 24-bit colors. It will also work for any version of neovim
set termguicolors

"Barra
" Configuració per a vim-airline
"fica automaticament els buffers a la barreta
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
"set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Indent Guides
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set breakindent "Indent after line wrapped
"Si estas en una linea i li dons al enter va a la següent línea amb la mateixa identació
:set autoindent

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-down> <C-E>
map <C-up> <C-Y>
" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Edit file |   DO NOT take out the trailing whitespace on this line
map <leader>e :e

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Close a window (with c we run into inconsistencies and problems thats the reason it's an x)
map <leader>c <C-W>c
" Vertical split
map <leader>v <C-W>v
" Horizontal split
map <leader>s <C-W>s

" Close the current buffer :bd will close a buffer
map <leader>bd :Bclose<cr>
" Close all the buffers
map <leader>ba :bufdo bd<cr>
" Previous buffer
map <leader>bp :bp <cr>
" Next buffer
map <leader>bn :bn <cr>
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/
" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>t<leader> :tabnext <cr>

" Git Gutter
nmap [c <Plug>(GitGutterNextHunk)
nmap ]c <Plug>(GitGutterPrevHunk)
nmap <leader>hp <Plug>(GitGutterPreviewHunk)
nmap <leader>hs <Plug>(GitGutterStageHunk)
nmap <leader>hu <Plug>(GitGutterUndoHunk)

" Specify the behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" barra, amaga la barra antiga, set laststatus=2 ensenya la barra sempre
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Press F5 to eliminate trailing whitespaces
:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Remap VIM 0 to first non-blank character
map 0 ^

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>p :setlocal paste!<cr>

" Quickly open a markdown buffer for scribble
"map <leader>pm :e ~/buffer.md<cr>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" EXTENDED
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Surround the visual selection in parenthesis/brackets/etc.:
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

"Quickly insert parenthesis/brackets/etc.:

inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Insert the current date and time (useful for timestamps):
iab xdate <C-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


" FILETYPES
""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f # --- <esc>a
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <C-t> $log();<esc>hi
au FileType javascript imap <C-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f // --- PH<esc>FP2xi

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()

au FileType gitcommit call setpos('.', [0, 1, 1, 0])


""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif

""""""""""""""""""""""""""""""
" => Twig section
""""""""""""""""""""""""""""""
autocmd BufRead *.twig set syntax=html filetype=html

""""""""""""""""""""""""""""""
" => Markdown
""""""""""""""""""""""""""""""
let vim_markdown_folding_disabled = 1
" Press ctrl+m to toggle markdown preview
nmap <C-m> <Plug>MarkdownPreviewToggle

"Per comentar una linea gcc per comentar gc per fer moviments

"Autoformat
noremap <F3> :Autoformat<CR>

" PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35

"Toggle nerd Tree ctrl-spacebar
nmap <C-Space> :NERDTreeToggle <CR>

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
"Open bufexplorer to see and manage the current buffers (<leader>o):
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_show_hidden = 1

" Quickly find and open a file in the current working directory
let g:ctrlp_map = '<C-f>'

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

""""""""""""""""""""""""""""""
" => FZF
""""""""""""""""""""""""""""""
map <leader>f :Files ~/<cr>
"map <C-f> :Files <cr>

""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>

""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
nnoremap <silent> <leader>d :GitGutterToggle<cr>
