syntax on
colorscheme slate
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=2
set autoindent
set nocompatible
set number
set wrap
set linebreak
set tw=0
set hlsearch
filetype on
filetype plugin on
 
let g:no_html_tab_mapping="yes"

let g:fuzzy_matching_limit=60
 
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/backup
 
" Key Mappings
map <C-T> :FuzzyFinderTextMate<cr>
map <F13> :NERDTree<cr>
 
imap <C-L> <space>=><space>
map + <C-W>+
map - <C-W>-
map _ <C-W>_
 
nmap ,s :source $HOME/.vimrc<cr>
nmap ,g :source $HOME/.gvimrc<cr>
nmap ,v :e $HOME/.vimrc
nmap ,vp :sp $HOME/.vimrc
 
fun! ClearAllLoggerDebugs()
  %s/^logger.debug(\=.*)\=$//gi
endfun
 
fun! ClearAllLoggerDebugsAndLines()
  %s/^logger.debug(\=.*)\=\n//gi
endfun
 
" Remap the tab key to do autocompletion or indentation depending on the
" context (from http://www.vim.org/tips/tip.php?tip_id=102)
fun! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
