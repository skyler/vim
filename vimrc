" Skyler's .vimrc
set nocompatible " be iMproved!

filetype plugin indent on " plugin and indent are required for Pathogen
syntax on
colorscheme jellybeans
set title

" Pathogen
call pathogen#infect()

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set formatoptions+=r
set number
set backspace=indent,eol,start
set cursorline

set pastetoggle=<F3>

" Toggle line numbering
set number
nnoremap <F2> :set nonumber!<CR>

" return to your last line when reopening a file
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Enable 256 colors for iTerm (can this be restricted only to iTerm?)
let &t_Co=256

" Highlight lines over 80 chars length
" Helpful for Python development
highlight OverLength ctermbg=55 ctermfg=white guibg=guibg=#5f0087
match OverLength /\%>80v.\+/ 

nnoremap <Bar> :call system('mac_copy', @0)<CR><ESC>

