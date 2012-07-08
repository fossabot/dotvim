call pathogen#infect()
call pathogen#helptags()

" colorscheme sunburst

set nocompatible
syntax on
filetype plugin indent on

set background=dark
set number 
set cindent
set shiftwidth=2
set tabstop=2
set scrolloff=3

set autoindent
set expandtab
retab
set splitbelow
set splitright

map <F1> <Esc>
imap <F1> <Esc>

" NERDTree stuff
let NERDTreeShowHidden=1

function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()
autocmd FileType ruby compiler ruby
