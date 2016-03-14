syntax on
set wrapscan
set number
set backspace=start,indent,eol
set t_Co=256
colorscheme desert
set nocompatible
filetype off
filetype plugin indent on
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'fancy'
set tabstop=4
set shiftwidth=4
set expandtab
set showtabline=2

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

augroup vimrc_autocmds
        autocmd!
            " highlight characters past column 120
            autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
            autocmd FileType python match Excess /\%120v.*/
            autocmd FileType python set nowrap
augroup END

let g:pymode_rope = 1
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0
let g:jedi#autocompletion_command = "<C-j>"
let g:jedi#popup_on_dot = 1
map <F2> :NERDTreeToggle<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'Valloric/MatchTagAlways'

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/reikurata/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/reikurata/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
