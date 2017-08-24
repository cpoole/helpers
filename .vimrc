set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'tpope/vim-sleuth'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()

filetype plugin indent on

colorscheme Monokai

set nocompatible	"remove legacy support
set ttyfast	" dont lag
set cursorline	" track position
set ruler	" track line and char pos
set fileformat=unix	" show carriage return if it exists

"SEARCH
set ignorecase	" case insensitive search
set smartcase	" uppercase causes case-sensitive search
set hlsearch	" highlight all search results
set incsearch	" increment search
set showmatch	" matching [] {} () <> 

set wildmenu	" show all autocomplete in popup menu
"set clipboard+=unnamed	" yank and copy to X clipboard
"set background=dark

"WHITESPACE
set autoindent	" auto indents next line
set list	" show all line endings
set listchars=tab:\|-,trail:-,extends:$,nbsp:=	" show tabs with vertical pipe
hi SpecialKey ctermfg=8
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd  ctermbg=238
"hi IndentGuidesEven ctermbg=240


set nowrap	" dont wrap lines
set linebreak	" attempt to wrap lines cleanly
set number	" display line numbers
set spelllang=en_gb	" use real english spelling
set dictionary+=/usr/share/dict/words	" use system standard dictionary

" SPLITS
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow	" place new files in adjacent window

" allow saving a sudo file if I forgot to open in sudo
cmap w!! w !sudo tee > /dev/null %
" Save whenever switching windows or leaving vim. This is useful when running
" the tests inside vim without having to save all files first.
au FocusLost,WinLeave * :silent! wa

" Trigger autoread when changing buffers or coming back to vim.
au FocusGained,BufEnter * :silent! !

set equalalways
