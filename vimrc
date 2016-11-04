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
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'yegappan/grep'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'rdnetto/YCM-Generator'
Plugin 'nathanaelkane/vim-indent-guides'

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

"charles's vim setting
"close compatible modle
set nocompatible

"enable mouse
set mouse=a

let mapleader = ","

"colors scheme
colorscheme desert

filetype plugin indent on

syntax on
set number

"indent setting
set expandtab
set cindent
set smartindent
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

"code fold
set foldmethod=indent
set foldmethod=syntax
set nofoldenable

"taglist setting
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"YouCompleteMe setting
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>ji :YcmCompleter GoToImprecise<CR>

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
