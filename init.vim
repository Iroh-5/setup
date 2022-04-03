set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required

:set shiftwidth=4
:set nohlsearch
:set autoindent
:set incsearch
:set whichwrap=h,l
:set number
:set splitbelow
:set splitright

:map \p i(<Esc>ea)<Esc>
:map \c i{<Esc>ea}<Esc>
:map \q i"<Esc>ea"<Esc>
:map \/ i//<Esc>

nnoremap <F4> :!make<cr>
nnoremap <F5> :!make run<cr>
nnoremap <F6> :!./build.sh<cr>
nnoremap <F7> :!./run.sh<cr>

tnoremap <F4> make<cr>
tnoremap <F5> make run<cr>
tnoremap <F6> ./build.sh<cr>
tnoremap <F7> ./run.sh<cr>

tmap jj <C-\><C-n> 
imap jj <Esc> 

:colorscheme gruvbox 
autocmd! BufNewFile,BufRead *.vs,*.fs,*.shader set ft=glsl
