" Skyler's .vimrc
set nocompatible " be iMproved!

" Pathogen
call pathogen#infect()

" Syntastic + Pyflakes
"let g:syntastic_python_checkers=['pylint']  " <--- suuuuper slow
let g:syntastic_python_checkers=['pyflakes']  " <----- this is good performance
"let g:syntastic_python_checkers=['flake8']  " <--- doesn't seem to actually do anything
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
"let g:syntastic_warning_symbol="⚠"
"let g:syntastic_error_symbol="✗"
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1 

filetype plugin indent on " plugin and indent are required for Pathogen
syntax on
set title

colorscheme jellybeans
"set background=dark
"colorscheme github

"set smartindent
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

set mouse=a

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

" Toggle tag list
nnoremap <F4> :TlistToggle<CR>

"set spell spelllang=en_us

let mapleader = ","
let maplocalleader  = ","

"disable the built-in F1 help shortcut
:nmap <F1> :echo<CR>
:imap <F1> <C-o>:echo<CR>

"nnoremap <F5>sign unplace *<CR>

set ff=unix

set listchars=tab:»·
set list
hi SpecialKey ctermbg=red ctermfg=red guibg=red guifg=red
