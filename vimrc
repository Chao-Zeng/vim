"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Vundle configuration                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

"############Plugin Manage############################
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'yegappan/grep'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'octol/vim-cpp-enhanced-highlight'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'taglist.vim'
Plugin 'The-NERD-tree'
"Plugin 'c.vim'
Plugin 'a.vim'
Plugin 'winmanager'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"############Plugin Manage############################


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          general settings                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible		" close compatible modle

colorscheme desert		" colors scheme
syntax on				" turn on syntax highlight
set number				" show line number
let mapleader = ","		" set <leader> to ,

" turn on filetype plugins
filetype plugin indent on

" editor setting
set cursorline			" highlights the current line
set ruler               " show line and column number of the cursor
set ignorecase          " case insensitive searching
set smartcase           " but become case sensitive if you type uppercase characters
set nobackup            " no backup~ files
set laststatus=2        " the statusline is now always shown
set autoread            " auto read when a file is changed from the outside
"set mouse=a				" enables the mouse in all modes, set mouse-=a for close mouse
set foldlevelstart=99   " all folds open by default
set history=1000        " remember more commands and search history
set undolevels=1000     " use many levels of undo
set hlsearch            " highlight search
set backspace=indent,eol,start    " enable backspace in insert mode

" toggles vim's paste mode; when we want to paste something into vim from a
" different application, turning on paste mode prevents the insertion of extra
" whitespace
set pastetoggle=<F7>

"indent setting
set cindent				" smart indenting for c-like code
set shiftround          " makes indenting a multiple of shiftwidth
set shiftwidth=4		" Number of spaces to use for each step of (auto)indent.
" only use spaces
set expandtab			" turn a tab into spaces
set tabstop=4			" number of spaces a tab counts for
" mix of tabs and spaces
"set noexpandtab
"set softtabstop=4		" spaces for tab looks like

"code fold
set foldmethod=indent
set foldmethod=syntax
set nofoldenable


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          plugin settings                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"YouCompleteMe setting
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 4
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>ji :YcmCompleter GoToImprecise<CR>

"taglist setting
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"NERDTree setting
let NERDTreeShowHidden=1
let NERDTreeAutoCenter=1
let NERDTreeHighlightCursorline=1
let NERDTreeMouseMode=2
let NERDTreeSortHiddenFirst=1
let NERDTreeDirArrows=1
let NERDChristmasTree=1

"miniBufExpl setting
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0

"WinManager setting
let g:NERDTree_title='NERD Tree'  
let g:winManagerWindowLayout='NERDTree|TagList'  
"let g:winManagerWindowLayout='FileExplorer|TagList'  
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
  
function! NERDTree_IsValid()  
    return 1  
endfunction

nmap wm :WMToggle<cr>
