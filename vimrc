filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"See config at: https://github.com/gmarik/Vundle.vim

Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'                            " nicer statusline
Plugin 'git://git.code.sf.net/p/vim-latex/vim-latex'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jpythonfold.vim'
"Plugin 'keflavich/macvim-skim'
Plugin 'ivanov/vim-ipython'

"markdown plugins
Plugin 'suan/vim-instant-markdown'
Plugin 'gabrielelana/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"enable mouse scrolling
set mouse=a


syntax enable
set background=light
colorscheme solarized

"set t_Co=256
"let &t_AB="\e[48;5;%dm"
"let &t_AF="\e[38;5;%dm"

set nocompatible                  " disable vi-compatibility mode
set encoding=UTF-8                " set character encoding
set backspace=indent,eol,start    " enable normal backspacing

set tabstop=2                     " define tab-width
set shiftwidth=2
set softtabstop=2
set expandtab                     " replace tab by spaces
set smarttab

set hlsearch                      " highlight matches
set ignorecase                    " ignore case
set smartcase                     " unless the search term contains upper case

" set showcmd                       " show last (normal mode) command
" set ruler                         " show current cursor position in numbers
set number                        " enable line numbers

set laststatus=2                  " to properly enable airline

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:markdown_fenced_languages = ['python', 'latex']

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'
 
let g:Tex_ViewRule_pdf = 'open -a Skim'

let g:Imap_UsePlaceHolders = 0

let mapleader=","
map ,ll <leader>ll
map ,ls :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r <C-r>=line('.')<CR> %<.pdf %<CR><CR>
map ,lv <leader>lv

let g:markdown_enable_spell_checking = 0
let g:markdown_enable_enable_mappings = 1

" Disable Arrow Keys
inoremap <Down> <NOP>
inoremap <Up> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Down> <NOP>
noremap <Up> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
