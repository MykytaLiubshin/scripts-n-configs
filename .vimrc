set nocompatible              " be iMproved, required
filetype off                  " required

" Tab specific option
set tabstop=2                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=2               "Insert 4 spaces when tab is pressed
set shiftwidth=2                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'zxqfl/tabnine-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'meck/vim-brittany'
Plug 'fatih/vim-go'
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" Code readability
set relativenumber
set colorcolumn=81
highlight ColorColumn ctermbg=darkgray
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

map <C-n> :NERDTreeToggle<CR>

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

nnoremap <F1> :ALEDetail<Return>

" vim-go
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

" autoformat
au BufWrite * :Autoformat
autocmd FileType haskell let b:autoformat_autoindent=0

" Java Language server
let g:ale_java_javalsp_executable="/home/vlad/programs/github/java-language-server/dist/launch_linux.sh"

" Debugging ALE
let g:ale_history_log_output = 1
