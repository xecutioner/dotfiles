syntax on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set re=2
set nocompatible
filetype off   
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'pangloss/vim-javascript'
  Plugin 'kien/ctrlp.vim'
  Plugin 'preservim/nerdtree'
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-rails'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'slim-template/vim-slim.git'
  Plugin 'misterbuckley/vim-definitive'
  Plugin 'elixir-editors/vim-elixir'
  " GIT SHOTCUT AS G
  Plugin 'tpope/vim-fugitive'
call vundle#end()            " required
filetype plugin indent on
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" CNTRL P INGNORE NODE MODULES 
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|tmp)$',
  \ }

let g:airline_powerline_fonts = 1
" Options for number settings
set relativenumber
set number 
" Auto relative number off on insert mode
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" For completing html tags 
iabbrev </ </<C-X><C-O>
" For opening current html file in safari 
nnoremap <F5> :!open -a Safari %<CR><CR>


let NERDTreeQuitOnOpen=1
